SELECT
    *
    ,LAG(active_quarter, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS active_quarter_lag_1
    ,LAG(catm_trx, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS catm_trx_lag_1
    ,LAG(catm_trx_other, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS catm_trx_other_lag_1
    ,LAG(ccaja_ahorro, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccaja_ahorro_lag_1
    ,LAG(ccaja_seguridad, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccaja_seguridad_lag_1
    ,LAG(ccajas_consultas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccajas_consultas_lag_1
    ,LAG(ccajas_depositos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccajas_depositos_lag_1
    ,LAG(ccajas_extracciones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccajas_extracciones_lag_1
    ,LAG(ccajas_otras, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccajas_otras_lag_1
    ,LAG(ccajas_transacciones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccajas_transacciones_lag_1
    ,LAG(ccajeros_propios_descuentos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccajeros_propios_descuentos_lag_1
    ,LAG(ccallcenter_transacciones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccallcenter_transacciones_lag_1
    ,LAG(ccheques_depositados, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccheques_depositados_lag_1
    ,LAG(ccheques_depositados_rechazados, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccheques_depositados_rechazados_lag_1
    ,LAG(ccheques_emitidos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccheques_emitidos_lag_1
    ,LAG(ccheques_emitidos_rechazados, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccheques_emitidos_rechazados_lag_1
    ,LAG(ccomisiones_mantenimiento, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccomisiones_mantenimiento_lag_1
    ,LAG(ccomisiones_otras, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccomisiones_otras_lag_1
    ,LAG(ccuenta_corriente, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccuenta_corriente_lag_1
    ,LAG(ccuenta_debitos_automaticos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ccuenta_debitos_automaticos_lag_1
    ,LAG(cdescubierto_preacordado, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cdescubierto_preacordado_lag_1
    ,LAG(cextraccion_autoservicio, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cextraccion_autoservicio_lag_1
    ,LAG(cforex, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cforex_lag_1
    ,LAG(cforex_buy, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cforex_buy_lag_1
    ,LAG(cforex_sell, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cforex_sell_lag_1
    ,LAG(chomebanking_transacciones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS chomebanking_transacciones_lag_1
    ,LAG(cinversion1, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cinversion1_lag_1
    ,LAG(cinversion2, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cinversion2_lag_1
    ,LAG(cliente_antiguedad, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cliente_antiguedad_lag_1
    ,LAG(cliente_edad, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cliente_edad_lag_1
    ,LAG(cliente_vip, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cliente_vip_lag_1
    ,LAG(cmobile_app_trx, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cmobile_app_trx_lag_1
    ,LAG(cpagodeservicios, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cpagodeservicios_lag_1
    ,LAG(cpagomiscuentas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cpagomiscuentas_lag_1
    ,LAG(cpayroll2_trx, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cpayroll2_trx_lag_1
    ,LAG(cpayroll_trx, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cpayroll_trx_lag_1
    ,LAG(cplazo_fijo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cplazo_fijo_lag_1
    ,LAG(cprestamos_hipotecarios, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cprestamos_hipotecarios_lag_1
    ,LAG(cprestamos_personales, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cprestamos_personales_lag_1
    ,LAG(cprestamos_prendarios, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cprestamos_prendarios_lag_1
    ,LAG(cproductos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cproductos_lag_1
    ,LAG(cseguro_accidentes_personales, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cseguro_accidentes_personales_lag_1
    ,LAG(cseguro_auto, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cseguro_auto_lag_1
    ,LAG(cseguro_vida, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cseguro_vida_lag_1
    ,LAG(cseguro_vivienda, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS cseguro_vivienda_lag_1
    ,LAG(ctarjeta_debito, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_debito_lag_1
    ,LAG(ctarjeta_debito_transacciones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_debito_transacciones_lag_1
    ,LAG(ctarjeta_master, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_master_lag_1
    ,LAG(ctarjeta_master_debitos_automaticos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_master_debitos_automaticos_lag_1
    ,LAG(ctarjeta_master_descuentos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_master_descuentos_lag_1
    ,LAG(ctarjeta_master_transacciones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_master_transacciones_lag_1
    ,LAG(ctarjeta_visa, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_visa_lag_1
    ,LAG(ctarjeta_visa_debitos_automaticos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_visa_debitos_automaticos_lag_1
    ,LAG(ctarjeta_visa_descuentos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_visa_descuentos_lag_1
    ,LAG(ctarjeta_visa_transacciones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctarjeta_visa_transacciones_lag_1
    ,LAG(ctransferencias_emitidas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctransferencias_emitidas_lag_1
    ,LAG(ctransferencias_recibidas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctransferencias_recibidas_lag_1
    ,LAG(ctrx_quarter, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS ctrx_quarter_lag_1
    ,LAG(internet, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS internet_lag_1
    ,LAG(mactivos_margen, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mactivos_margen_lag_1
    ,LAG(Master_cadelantosefectivo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_cadelantosefectivo_lag_1
    ,LAG(Master_cconsumos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_cconsumos_lag_1
    ,LAG(Master_delinquency, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_delinquency_lag_1
    ,LAG(Master_fechaalta, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_fechaalta_lag_1
    ,LAG(Master_Finiciomora, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_Finiciomora_lag_1
    ,LAG(Master_fultimo_cierre, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_fultimo_cierre_lag_1
    ,LAG(Master_Fvencimiento, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_Fvencimiento_lag_1
    ,LAG(Master_madelantodolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_madelantodolares_lag_1
    ,LAG(Master_madelantopesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_madelantopesos_lag_1
    ,LAG(Master_mconsumosdolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mconsumosdolares_lag_1
    ,LAG(Master_mconsumospesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mconsumospesos_lag_1
    ,LAG(Master_mconsumototal, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mconsumototal_lag_1
    ,LAG(Master_mfinanciacion_limite, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mfinanciacion_limite_lag_1
    ,LAG(Master_mlimitecompra, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mlimitecompra_lag_1
    ,LAG(Master_mpagado, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mpagado_lag_1
    ,LAG(Master_mpagominimo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mpagominimo_lag_1
    ,LAG(Master_mpagosdolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mpagosdolares_lag_1
    ,LAG(Master_mpagospesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_mpagospesos_lag_1
    ,LAG(Master_msaldodolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_msaldodolares_lag_1
    ,LAG(Master_msaldopesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_msaldopesos_lag_1
    ,LAG(Master_msaldototal, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_msaldototal_lag_1
    ,LAG(Master_status, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Master_status_lag_1
    ,LAG(matm, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS matm_lag_1
    ,LAG(matm_other, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS matm_other_lag_1
    ,LAG(mautoservicio, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mautoservicio_lag_1
    ,LAG(mcaja_ahorro, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcaja_ahorro_lag_1
    ,LAG(mcaja_ahorro_adicional, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcaja_ahorro_adicional_lag_1
    ,LAG(mcaja_ahorro_dolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcaja_ahorro_dolares_lag_1
    ,LAG(mcajeros_propios_descuentos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcajeros_propios_descuentos_lag_1
    ,LAG(mcheques_depositados, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcheques_depositados_lag_1
    ,LAG(mcheques_depositados_rechazados, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcheques_depositados_rechazados_lag_1
    ,LAG(mcheques_emitidos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcheques_emitidos_lag_1
    ,LAG(mcheques_emitidos_rechazados, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcheques_emitidos_rechazados_lag_1
    ,LAG(mcomisiones, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcomisiones_lag_1
    ,LAG(mcomisiones_mantenimiento, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcomisiones_mantenimiento_lag_1
    ,LAG(mcomisiones_otras, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcomisiones_otras_lag_1
    ,LAG(mcuenta_corriente, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcuenta_corriente_lag_1
    ,LAG(mcuenta_corriente_adicional, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcuenta_corriente_adicional_lag_1
    ,LAG(mcuenta_debitos_automaticos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcuenta_debitos_automaticos_lag_1
    ,LAG(mcuentas_saldo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mcuentas_saldo_lag_1
    ,LAG(mextraccion_autoservicio, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mextraccion_autoservicio_lag_1
    ,LAG(mforex_buy, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mforex_buy_lag_1
    ,LAG(mforex_sell, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mforex_sell_lag_1
    ,LAG(minversion1_dolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS minversion1_dolares_lag_1
    ,LAG(minversion1_pesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS minversion1_pesos_lag_1
    ,LAG(minversion2, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS minversion2_lag_1
    ,LAG(mpagodeservicios, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mpagodeservicios_lag_1
    ,LAG(mpagomiscuentas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mpagomiscuentas_lag_1
    ,LAG(mpasivos_margen, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mpasivos_margen_lag_1
    ,LAG(mpayroll, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mpayroll_lag_1
    ,LAG(mpayroll2, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mpayroll2_lag_1
    ,LAG(mplazo_fijo_dolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mplazo_fijo_dolares_lag_1
    ,LAG(mplazo_fijo_pesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mplazo_fijo_pesos_lag_1
    ,LAG(mprestamos_hipotecarios, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mprestamos_hipotecarios_lag_1
    ,LAG(mprestamos_personales, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mprestamos_personales_lag_1
    ,LAG(mprestamos_prendarios, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mprestamos_prendarios_lag_1
    ,LAG(mrentabilidad, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mrentabilidad_lag_1
    ,LAG(mrentabilidad_annual, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mrentabilidad_annual_lag_1
    ,LAG(mtarjeta_master_consumo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mtarjeta_master_consumo_lag_1
    ,LAG(mtarjeta_master_descuentos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mtarjeta_master_descuentos_lag_1
    ,LAG(mtarjeta_visa_consumo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mtarjeta_visa_consumo_lag_1
    ,LAG(mtarjeta_visa_descuentos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mtarjeta_visa_descuentos_lag_1
    ,LAG(mtransferencias_emitidas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mtransferencias_emitidas_lag_1
    ,LAG(mtransferencias_recibidas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mtransferencias_recibidas_lag_1
    ,LAG(mttarjeta_master_debitos_automaticos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mttarjeta_master_debitos_automaticos_lag_1
    ,LAG(mttarjeta_visa_debitos_automaticos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS mttarjeta_visa_debitos_automaticos_lag_1
    ,LAG(tcallcenter, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS tcallcenter_lag_1
    ,LAG(tcuentas, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS tcuentas_lag_1
    ,LAG(thomebanking, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS thomebanking_lag_1
    ,LAG(tmobile_app, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS tmobile_app_lag_1
    ,LAG(Visa_cadelantosefectivo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_cadelantosefectivo_lag_1
    ,LAG(Visa_cconsumos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_cconsumos_lag_1
    ,LAG(Visa_delinquency, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_delinquency_lag_1
    ,LAG(Visa_fechaalta, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_fechaalta_lag_1
    ,LAG(Visa_Finiciomora, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_Finiciomora_lag_1
    ,LAG(Visa_fultimo_cierre, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_fultimo_cierre_lag_1
    ,LAG(Visa_Fvencimiento, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_Fvencimiento_lag_1
    ,LAG(Visa_madelantodolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_madelantodolares_lag_1
    ,LAG(Visa_madelantopesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_madelantopesos_lag_1
    ,LAG(Visa_mconsumosdolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mconsumosdolares_lag_1
    ,LAG(Visa_mconsumospesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mconsumospesos_lag_1
    ,LAG(Visa_mconsumototal, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mconsumototal_lag_1
    ,LAG(Visa_mfinanciacion_limite, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mfinanciacion_limite_lag_1
    ,LAG(Visa_mlimitecompra, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mlimitecompra_lag_1
    ,LAG(Visa_mpagado, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mpagado_lag_1
    ,LAG(Visa_mpagominimo, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mpagominimo_lag_1
    ,LAG(Visa_mpagosdolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mpagosdolares_lag_1
    ,LAG(Visa_mpagospesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_mpagospesos_lag_1
    ,LAG(Visa_msaldodolares, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_msaldodolares_lag_1
    ,LAG(Visa_msaldopesos, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_msaldopesos_lag_1
    ,LAG(Visa_msaldototal, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_msaldototal_lag_1
    ,LAG(Visa_status, 1) OVER (PARTITION BY numero_de_cliente ORDER BY foto_mes ASC) AS Visa_status_lag_1
FROM competencia_03