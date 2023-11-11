import Pkg;
Pkg.add("DataFrames");
Pkg.add("Parquet");

using Parquet,  DataFrames;

periodo_anterior(x::Integer) =  x % 100 > 1  ?  x-1  : 12 + (div(x,100) -1) * 100

df = DataFrame(read_parquet("buckets/b1/datasets/raw/competencia_03_crudo.parquet"))

sort!(df, [:numero_de_cliente, :foto_mes])

global periodo_ultimo = maximum( df.foto_mes )
global periodo_anteultimo = periodo_anterior( periodo_ultimo)

println( "periodo_ultimo: ", periodo_ultimo )
println( "periodo_anteultimo: ", periodo_anteultimo )

# assign most common class values
df.clase_ternaria = @. ifelse( df.foto_mes < periodo_anteultimo, "CONTINUA", missing )

# pre compute sequential time
periodo = @. div(df.foto_mes,100)*12 + df.foto_mes%100

global last = nrow(df)

for i in 1:last
  if coalesce(df.clase_ternaria[i], "")=="BAJA+2" &&  (i+1 < last) && (coalesce( df.clase_ternaria[i+1], "")=="CONTINUA") && (df.numero_de_cliente[i] == df.numero_de_cliente[i+1])
        df.clase_ternaria[i] = "CONTINUA"
  end
  if (coalesce(df.clase_ternaria[i], "")=="BAJA+1") &&  (i+1 < last) && (coalesce( df.clase_ternaria[i+1], "")=="CONTINUA") && (df.numero_de_cliente[i] == df.numero_de_cliente[i+1])
      df.clase_ternaria[i] = "CONTINUA"
  end
end

file = "buckets/b1/datasets/interim/competencia_03_crudo.parquet"
write_parquet(file, df)
