from typing import Tuple

import duckdb
import pandas as pd

from src.constants import DELTA_FILES, LAG_FILES, PATH_CRUDO, TEST_MONTH, TRAINING_MONTHS, VALIDATION_MONTHS


def extract(con: duckdb.DuckDBPyConnection, replace: bool = False) -> None:
    if replace:
        con.sql("DROP TABLE IF EXISTS competencia_03;")
    con.sql(
        f"""
        CREATE OR REPLACE TABLE competencia_03 AS (
            SELECT
                *
            FROM read_parquet('{PATH_CRUDO}')
        );
        """
    )


def transform(con: duckdb.DuckDBPyConnection) -> None:
    con.sql(
        """
            CREATE OR REPLACE TABLE competencia_03 AS (
                SELECT
                    *,
                    RANK() OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes DESC) AS rank_foto_mes,
                FROM competencia_03
            );
            """
    )

    con.sql(
        """
            CREATE OR REPLACE TABLE competencia_03 AS (
                SELECT
                    *,
                    rank_foto_mes*-1 + 1 AS rank_foto_mes_2
                FROM competencia_03
            );
            """
    )

    con.sql(
        """
        CREATE OR REPLACE TABLE competencia_03 AS (
            SELECT
                *,
                CASE
                    WHEN rank_foto_mes_2 = 0 THEN 'BAJA+2'
                    WHEN rank_foto_mes_2 =-1 THEN 'BAJA+1'
                    ELSE 'CONTINUA'
                END AS clase_ternaria
            FROM competencia_03
        );
        """
    )

    for i in LAG_FILES:
        with open(i) as f:
            query = f.read()
        con.sql(
            f"""
                CREATE OR REPLACE TABLE competencia_03 AS (
                    {query}
                );
            """
        )

    for i in DELTA_FILES:
        with open(i) as f:
            query = f.read()
        con.sql(
            f"""
                CREATE OR REPLACE TABLE competencia_03 AS (
                    {query}
                );
                """
        )

    con.sql(
        """
        CREATE OR REPLACE TABLE competencia_03_clase_ternaria AS (
            SELECT
                *
            FROM competencia_03
        );
        """
    )

    con.sql(
        """
        ALTER TABLE competencia_03_clase_ternaria DROP COLUMN rank_foto_mes;
        ALTER TABLE competencia_03_clase_ternaria DROP COLUMN rank_foto_mes_2;
        """
    )


def preprocess_training(con: duckdb.DuckDBPyConnection) -> Tuple[pd.DataFrame, pd.DataFrame, pd.DataFrame]:
    in_clause_training = ", ".join([str(i) for i in TRAINING_MONTHS])
    in_clause_validation = ", ".join([str(i) for i in VALIDATION_MONTHS])
    in_clause_test = ", ".join([str(i) for i in TEST_MONTH])
    in_clause_all = ", ".join([str(i) for i in TRAINING_MONTHS + VALIDATION_MONTHS + TEST_MONTH])

    con.sql(
        f"""
        CREATE OR REPLACE TABLE competencia_03_clase_binaria AS (
            SELECT
                *,
                CASE
                    WHEN clase_ternaria = 'BAJA+2' THEN 1
                    WHEN clase_ternaria ='BAJA+1' THEN 0
                    WHEN clase_ternaria = 'CONTINUA' THEN 0
                    ELSE 0
                END AS clase_binaria
            FROM competencia_03_clase_ternaria
            WHERE foto_mes IN ({in_clause_all})
        );
        """
    )

    con.sql(
        """
        COPY competencia_03_clase_binaria
        TO 'datasets/interim/competencia_03_clase_binaria_small.csv' (FORMAT CSV, HEADER);
        """
    )

    con.sql(
        """
        ALTER TABLE competencia_03_clase_binaria DROP COLUMN clase_ternaria;
        """
    )

    con.sql(
        f"""
        CREATE OR REPLACE TABLE competencia_03_training AS (
            SELECT
                *
            FROM competencia_03_clase_binaria
            WHERE foto_mes IN ({in_clause_training})
        );
        """
    )

    con.sql(
        f"""
        CREATE OR REPLACE TABLE competencia_03_validation AS (
            SELECT
                *
            FROM competencia_03_clase_binaria
            WHERE foto_mes IN ({in_clause_validation})
        );
        """
    )

    con.sql(
        f"""
        CREATE OR REPLACE TABLE competencia_03_test AS (
            SELECT
                *
            FROM competencia_03_clase_binaria
            WHERE foto_mes IN ({in_clause_test})
        );
        """
    )

    con.sql(
        """
        ALTER TABLE competencia_03_test DROP COLUMN clase_binaria;
        """
    )

    df_train = con.sql("SELECT * FROM competencia_03_training").to_df()
    df_valid = con.sql("SELECT * FROM competencia_03_validation").to_df()
    df_test = con.sql("SELECT * FROM competencia_03_test").to_df()

    df_train.to_csv("datasets/interim/training.csv", index=False)
    df_valid.to_csv("datasets/interim/validation.csv", index=False)
    df_test.to_csv("datasets/interim/test.csv", index=False)

    return df_train, df_valid, df_test


def generate_small_dataset(con: duckdb.DuckDBPyConnection) -> None:
    con.sql(
        """
        CREATE OR REPLACE TABLE competencia_03_small AS (
        SELECT
            *
        FROM competencia_03
        WHERE numero_de_cliente IN (
            64852360,
            86372551,
            94680261,
            104451733,
            68015042,
            153977335,
            115341090,
            115297751,
            142553450,
            34002800,
            37929113,
            53867657,
            55545254,
            66563672,
            81769310,
            36842056
            )
        ORDER BY numero_de_cliente, foto_mes
        );
        """
    )

    con.sql(
        """
        COPY competencia_03_small
        TO 'datasets/raw/competencia_03_small.csv' (FORMAT CSV, HEADER);
        """
    )

    con.sql(
        """
        COPY competencia_03_small
        TO 'datasets/raw/competencia_03_small.parquet' (FORMAT PARQUET);
        """
    )
