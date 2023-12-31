SELECT
    *
    ,active_quarter-active_quarter_lag_6 AS active_quarter_delta_lag_6
    ,cliente_vip-cliente_vip_lag_6 AS cliente_vip_delta_lag_6
    ,internet-internet_lag_6 AS internet_delta_lag_6
    ,cliente_edad-cliente_edad_lag_6 AS cliente_edad_delta_lag_6
    ,cliente_antiguedad-cliente_antiguedad_lag_6 AS cliente_antiguedad_delta_lag_6
    ,mrentabilidad-mrentabilidad_lag_6 AS mrentabilidad_delta_lag_6
    ,mrentabilidad_annual-mrentabilidad_annual_lag_6 AS mrentabilidad_annual_delta_lag_6
    ,mcomisiones-mcomisiones_lag_6 AS mcomisiones_delta_lag_6
    ,mactivos_margen-mactivos_margen_lag_6 AS mactivos_margen_delta_lag_6
    ,mpasivos_margen-mpasivos_margen_lag_6 AS mpasivos_margen_delta_lag_6
    ,cproductos-cproductos_lag_6 AS cproductos_delta_lag_6
    ,tcuentas-tcuentas_lag_6 AS tcuentas_delta_lag_6
    ,ccuenta_corriente-ccuenta_corriente_lag_6 AS ccuenta_corriente_delta_lag_6
    ,mcuenta_corriente_adicional-mcuenta_corriente_adicional_lag_6 AS mcuenta_corriente_adicional_delta_lag_6
    ,mcuenta_corriente-mcuenta_corriente_lag_6 AS mcuenta_corriente_delta_lag_6
    ,ccaja_ahorro-ccaja_ahorro_lag_6 AS ccaja_ahorro_delta_lag_6
    ,mcaja_ahorro-mcaja_ahorro_lag_6 AS mcaja_ahorro_delta_lag_6
    ,mcaja_ahorro_adicional-mcaja_ahorro_adicional_lag_6 AS mcaja_ahorro_adicional_delta_lag_6
    ,mcaja_ahorro_dolares-mcaja_ahorro_dolares_lag_6 AS mcaja_ahorro_dolares_delta_lag_6
    ,cdescubierto_preacordado-cdescubierto_preacordado_lag_6 AS cdescubierto_preacordado_delta_lag_6
    ,mcuentas_saldo-mcuentas_saldo_lag_6 AS mcuentas_saldo_delta_lag_6
    ,ctarjeta_debito-ctarjeta_debito_lag_6 AS ctarjeta_debito_delta_lag_6
    ,ctarjeta_debito_transacciones-ctarjeta_debito_transacciones_lag_6 AS ctarjeta_debito_transacciones_delta_lag_6
    ,mautoservicio-mautoservicio_lag_6 AS mautoservicio_delta_lag_6
    ,ctarjeta_visa-ctarjeta_visa_lag_6 AS ctarjeta_visa_delta_lag_6
    ,ctarjeta_visa_transacciones-ctarjeta_visa_transacciones_lag_6 AS ctarjeta_visa_transacciones_delta_lag_6
    ,mtarjeta_visa_consumo-mtarjeta_visa_consumo_lag_6 AS mtarjeta_visa_consumo_delta_lag_6
    ,ctarjeta_master-ctarjeta_master_lag_6 AS ctarjeta_master_delta_lag_6
    ,ctarjeta_master_transacciones-ctarjeta_master_transacciones_lag_6 AS ctarjeta_master_transacciones_delta_lag_6
    ,mtarjeta_master_consumo-mtarjeta_master_consumo_lag_6 AS mtarjeta_master_consumo_delta_lag_6
    ,cprestamos_personales-cprestamos_personales_lag_6 AS cprestamos_personales_delta_lag_6
    ,mprestamos_personales-mprestamos_personales_lag_6 AS mprestamos_personales_delta_lag_6
    ,cprestamos_prendarios-cprestamos_prendarios_lag_6 AS cprestamos_prendarios_delta_lag_6
    ,mprestamos_prendarios-mprestamos_prendarios_lag_6 AS mprestamos_prendarios_delta_lag_6
    ,cprestamos_hipotecarios-cprestamos_hipotecarios_lag_6 AS cprestamos_hipotecarios_delta_lag_6
    ,mprestamos_hipotecarios-mprestamos_hipotecarios_lag_6 AS mprestamos_hipotecarios_delta_lag_6
    ,cplazo_fijo-cplazo_fijo_lag_6 AS cplazo_fijo_delta_lag_6
    ,mplazo_fijo_dolares-mplazo_fijo_dolares_lag_6 AS mplazo_fijo_dolares_delta_lag_6
    ,mplazo_fijo_pesos-mplazo_fijo_pesos_lag_6 AS mplazo_fijo_pesos_delta_lag_6
    ,cinversion1-cinversion1_lag_6 AS cinversion1_delta_lag_6
    ,minversion1_pesos-minversion1_pesos_lag_6 AS minversion1_pesos_delta_lag_6
    ,minversion1_dolares-minversion1_dolares_lag_6 AS minversion1_dolares_delta_lag_6
    ,cinversion2-cinversion2_lag_6 AS cinversion2_delta_lag_6
    ,minversion2-minversion2_lag_6 AS minversion2_delta_lag_6
    ,cseguro_vida-cseguro_vida_lag_6 AS cseguro_vida_delta_lag_6
    ,cseguro_auto-cseguro_auto_lag_6 AS cseguro_auto_delta_lag_6
    ,cseguro_vivienda-cseguro_vivienda_lag_6 AS cseguro_vivienda_delta_lag_6
    ,cseguro_accidentes_personales-cseguro_accidentes_personales_lag_6 AS cseguro_accidentes_personales_delta_lag_6
    ,ccaja_seguridad-ccaja_seguridad_lag_6 AS ccaja_seguridad_delta_lag_6
    ,cpayroll_trx-cpayroll_trx_lag_6 AS cpayroll_trx_delta_lag_6
    ,mpayroll-mpayroll_lag_6 AS mpayroll_delta_lag_6
    ,mpayroll2-mpayroll2_lag_6 AS mpayroll2_delta_lag_6
    ,cpayroll2_trx-cpayroll2_trx_lag_6 AS cpayroll2_trx_delta_lag_6
    ,ccuenta_debitos_automaticos-ccuenta_debitos_automaticos_lag_6 AS ccuenta_debitos_automaticos_delta_lag_6
    ,mcuenta_debitos_automaticos-mcuenta_debitos_automaticos_lag_6 AS mcuenta_debitos_automaticos_delta_lag_6
    ,ctarjeta_visa_debitos_automaticos-ctarjeta_visa_debitos_automaticos_lag_6 AS ctarjeta_visa_debitos_automaticos_delta_lag_6
    ,mttarjeta_visa_debitos_automaticos-mttarjeta_visa_debitos_automaticos_lag_6 AS mttarjeta_visa_debitos_automaticos_delta_lag_6
    ,ctarjeta_master_debitos_automaticos-ctarjeta_master_debitos_automaticos_lag_6 AS ctarjeta_master_debitos_automaticos_delta_lag_6
    ,mttarjeta_master_debitos_automaticos-mttarjeta_master_debitos_automaticos_lag_6 AS mttarjeta_master_debitos_automaticos_delta_lag_6
    ,cpagodeservicios-cpagodeservicios_lag_6 AS cpagodeservicios_delta_lag_6
    ,mpagodeservicios-mpagodeservicios_lag_6 AS mpagodeservicios_delta_lag_6
    ,cpagomiscuentas-cpagomiscuentas_lag_6 AS cpagomiscuentas_delta_lag_6
    ,mpagomiscuentas-mpagomiscuentas_lag_6 AS mpagomiscuentas_delta_lag_6
    ,ccajeros_propios_descuentos-ccajeros_propios_descuentos_lag_6 AS ccajeros_propios_descuentos_delta_lag_6
    ,mcajeros_propios_descuentos-mcajeros_propios_descuentos_lag_6 AS mcajeros_propios_descuentos_delta_lag_6
    ,ctarjeta_visa_descuentos-ctarjeta_visa_descuentos_lag_6 AS ctarjeta_visa_descuentos_delta_lag_6
    ,mtarjeta_visa_descuentos-mtarjeta_visa_descuentos_lag_6 AS mtarjeta_visa_descuentos_delta_lag_6
    ,ctarjeta_master_descuentos-ctarjeta_master_descuentos_lag_6 AS ctarjeta_master_descuentos_delta_lag_6
    ,mtarjeta_master_descuentos-mtarjeta_master_descuentos_lag_6 AS mtarjeta_master_descuentos_delta_lag_6
    ,ccomisiones_mantenimiento-ccomisiones_mantenimiento_lag_6 AS ccomisiones_mantenimiento_delta_lag_6
    ,mcomisiones_mantenimiento-mcomisiones_mantenimiento_lag_6 AS mcomisiones_mantenimiento_delta_lag_6
    ,ccomisiones_otras-ccomisiones_otras_lag_6 AS ccomisiones_otras_delta_lag_6
    ,mcomisiones_otras-mcomisiones_otras_lag_6 AS mcomisiones_otras_delta_lag_6
    ,cforex-cforex_lag_6 AS cforex_delta_lag_6
    ,cforex_buy-cforex_buy_lag_6 AS cforex_buy_delta_lag_6
    ,mforex_buy-mforex_buy_lag_6 AS mforex_buy_delta_lag_6
    ,cforex_sell-cforex_sell_lag_6 AS cforex_sell_delta_lag_6
    ,mforex_sell-mforex_sell_lag_6 AS mforex_sell_delta_lag_6
    ,ctransferencias_recibidas-ctransferencias_recibidas_lag_6 AS ctransferencias_recibidas_delta_lag_6
    ,mtransferencias_recibidas-mtransferencias_recibidas_lag_6 AS mtransferencias_recibidas_delta_lag_6
    ,ctransferencias_emitidas-ctransferencias_emitidas_lag_6 AS ctransferencias_emitidas_delta_lag_6
    ,mtransferencias_emitidas-mtransferencias_emitidas_lag_6 AS mtransferencias_emitidas_delta_lag_6
    ,cextraccion_autoservicio-cextraccion_autoservicio_lag_6 AS cextraccion_autoservicio_delta_lag_6
    ,mextraccion_autoservicio-mextraccion_autoservicio_lag_6 AS mextraccion_autoservicio_delta_lag_6
    ,ccheques_depositados-ccheques_depositados_lag_6 AS ccheques_depositados_delta_lag_6
    ,mcheques_depositados-mcheques_depositados_lag_6 AS mcheques_depositados_delta_lag_6
    ,ccheques_emitidos-ccheques_emitidos_lag_6 AS ccheques_emitidos_delta_lag_6
    ,mcheques_emitidos-mcheques_emitidos_lag_6 AS mcheques_emitidos_delta_lag_6
    ,ccheques_depositados_rechazados-ccheques_depositados_rechazados_lag_6 AS ccheques_depositados_rechazados_delta_lag_6
    ,mcheques_depositados_rechazados-mcheques_depositados_rechazados_lag_6 AS mcheques_depositados_rechazados_delta_lag_6
    ,ccheques_emitidos_rechazados-ccheques_emitidos_rechazados_lag_6 AS ccheques_emitidos_rechazados_delta_lag_6
    ,mcheques_emitidos_rechazados-mcheques_emitidos_rechazados_lag_6 AS mcheques_emitidos_rechazados_delta_lag_6
    ,tcallcenter-tcallcenter_lag_6 AS tcallcenter_delta_lag_6
    ,ccallcenter_transacciones-ccallcenter_transacciones_lag_6 AS ccallcenter_transacciones_delta_lag_6
    ,thomebanking-thomebanking_lag_6 AS thomebanking_delta_lag_6
    ,chomebanking_transacciones-chomebanking_transacciones_lag_6 AS chomebanking_transacciones_delta_lag_6
    ,ccajas_transacciones-ccajas_transacciones_lag_6 AS ccajas_transacciones_delta_lag_6
    ,ccajas_consultas-ccajas_consultas_lag_6 AS ccajas_consultas_delta_lag_6
    ,ccajas_depositos-ccajas_depositos_lag_6 AS ccajas_depositos_delta_lag_6
    ,ccajas_extracciones-ccajas_extracciones_lag_6 AS ccajas_extracciones_delta_lag_6
    ,ccajas_otras-ccajas_otras_lag_6 AS ccajas_otras_delta_lag_6
    ,catm_trx-catm_trx_lag_6 AS catm_trx_delta_lag_6
    ,matm-matm_lag_6 AS matm_delta_lag_6
    ,catm_trx_other-catm_trx_other_lag_6 AS catm_trx_other_delta_lag_6
    ,matm_other-matm_other_lag_6 AS matm_other_delta_lag_6
    ,ctrx_quarter-ctrx_quarter_lag_6 AS ctrx_quarter_delta_lag_6
    ,tmobile_app-tmobile_app_lag_6 AS tmobile_app_delta_lag_6
    ,cmobile_app_trx-cmobile_app_trx_lag_6 AS cmobile_app_trx_delta_lag_6
    ,Master_delinquency-Master_delinquency_lag_6 AS Master_delinquency_delta_lag_6
    ,Master_status-Master_status_lag_6 AS Master_status_delta_lag_6
    ,Master_mfinanciacion_limite-Master_mfinanciacion_limite_lag_6 AS Master_mfinanciacion_limite_delta_lag_6
    ,Master_Fvencimiento-Master_Fvencimiento_lag_6 AS Master_Fvencimiento_delta_lag_6
    ,Master_Finiciomora-Master_Finiciomora_lag_6 AS Master_Finiciomora_delta_lag_6
    ,Master_msaldototal-Master_msaldototal_lag_6 AS Master_msaldototal_delta_lag_6
    ,Master_msaldopesos-Master_msaldopesos_lag_6 AS Master_msaldopesos_delta_lag_6
    ,Master_msaldodolares-Master_msaldodolares_lag_6 AS Master_msaldodolares_delta_lag_6
    ,Master_mconsumospesos-Master_mconsumospesos_lag_6 AS Master_mconsumospesos_delta_lag_6
    ,Master_mconsumosdolares-Master_mconsumosdolares_lag_6 AS Master_mconsumosdolares_delta_lag_6
    ,Master_mlimitecompra-Master_mlimitecompra_lag_6 AS Master_mlimitecompra_delta_lag_6
    ,Master_madelantopesos-Master_madelantopesos_lag_6 AS Master_madelantopesos_delta_lag_6
    ,Master_madelantodolares-Master_madelantodolares_lag_6 AS Master_madelantodolares_delta_lag_6
    ,Master_fultimo_cierre-Master_fultimo_cierre_lag_6 AS Master_fultimo_cierre_delta_lag_6
    ,Master_mpagado-Master_mpagado_lag_6 AS Master_mpagado_delta_lag_6
    ,Master_mpagospesos-Master_mpagospesos_lag_6 AS Master_mpagospesos_delta_lag_6
    ,Master_mpagosdolares-Master_mpagosdolares_lag_6 AS Master_mpagosdolares_delta_lag_6
    ,Master_fechaalta-Master_fechaalta_lag_6 AS Master_fechaalta_delta_lag_6
    ,Master_mconsumototal-Master_mconsumototal_lag_6 AS Master_mconsumototal_delta_lag_6
    ,Master_cconsumos-Master_cconsumos_lag_6 AS Master_cconsumos_delta_lag_6
    ,Master_cadelantosefectivo-Master_cadelantosefectivo_lag_6 AS Master_cadelantosefectivo_delta_lag_6
    ,Master_mpagominimo-Master_mpagominimo_lag_6 AS Master_mpagominimo_delta_lag_6
    ,Visa_delinquency-Visa_delinquency_lag_6 AS Visa_delinquency_delta_lag_6
    ,Visa_status-Visa_status_lag_6 AS Visa_status_delta_lag_6
    ,Visa_mfinanciacion_limite-Visa_mfinanciacion_limite_lag_6 AS Visa_mfinanciacion_limite_delta_lag_6
    ,Visa_Fvencimiento-Visa_Fvencimiento_lag_6 AS Visa_Fvencimiento_delta_lag_6
    ,Visa_Finiciomora-Visa_Finiciomora_lag_6 AS Visa_Finiciomora_delta_lag_6
    ,Visa_msaldototal-Visa_msaldototal_lag_6 AS Visa_msaldototal_delta_lag_6
    ,Visa_msaldopesos-Visa_msaldopesos_lag_6 AS Visa_msaldopesos_delta_lag_6
    ,Visa_msaldodolares-Visa_msaldodolares_lag_6 AS Visa_msaldodolares_delta_lag_6
    ,Visa_mconsumospesos-Visa_mconsumospesos_lag_6 AS Visa_mconsumospesos_delta_lag_6
    ,Visa_mconsumosdolares-Visa_mconsumosdolares_lag_6 AS Visa_mconsumosdolares_delta_lag_6
    ,Visa_mlimitecompra-Visa_mlimitecompra_lag_6 AS Visa_mlimitecompra_delta_lag_6
    ,Visa_madelantopesos-Visa_madelantopesos_lag_6 AS Visa_madelantopesos_delta_lag_6
    ,Visa_madelantodolares-Visa_madelantodolares_lag_6 AS Visa_madelantodolares_delta_lag_6
    ,Visa_fultimo_cierre-Visa_fultimo_cierre_lag_6 AS Visa_fultimo_cierre_delta_lag_6
    ,Visa_mpagado-Visa_mpagado_lag_6 AS Visa_mpagado_delta_lag_6
    ,Visa_mpagospesos-Visa_mpagospesos_lag_6 AS Visa_mpagospesos_delta_lag_6
    ,Visa_mpagosdolares-Visa_mpagosdolares_lag_6 AS Visa_mpagosdolares_delta_lag_6
    ,Visa_fechaalta-Visa_fechaalta_lag_6 AS Visa_fechaalta_delta_lag_6
    ,Visa_mconsumototal-Visa_mconsumototal_lag_6 AS Visa_mconsumototal_delta_lag_6
    ,Visa_cconsumos-Visa_cconsumos_lag_6 AS Visa_cconsumos_delta_lag_6
    ,Visa_cadelantosefectivo-Visa_cadelantosefectivo_lag_6 AS Visa_cadelantosefectivo_delta_lag_6
    ,Visa_mpagominimo-Visa_mpagominimo_lag_6 AS Visa_mpagominimo_delta_lag_6
FROM competencia_03
