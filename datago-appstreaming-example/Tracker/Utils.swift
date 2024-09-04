//
//  Utils.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import Foundation
import SnowplowTracker

func createGlobalContext() -> ConfigurationProtocol {
    
    
    // GA4|GA UA: Информация о пользователе
    let userContext = SelfDescribingJson(
        schema: "iglu:ru.datago/user_context/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
        andData: [
            "userId": "%userId%", // userId: String: optional: id пользователя
            "userEmail": "%hashUserEmail%", // userEmail: String: optional: Хеш от email
            "userPhone": "%hashPhone%", // userPhone: String: optional: Хеш от телефона пользователя
            "userDataGoId": "",
        ]
    )
    
    // GA UA: Информация о CustomDimentions
    let customDimensionsContext = SelfDescribingJson(
        schema: "iglu:ru.datago/custom_dimension/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
        andData: [
            "customDimension1": "%Value1%",
           // "customDimension2" to "%Value2%",
           // "customDimension3" to "%Value3%",
           // ....
           // "customDimensionN" to "%ValueN%",
           // кол-во параметров ограничено размером отправляемых данных в настройках трекера
                     
        ]
    )
    
    // GA UA: Информация о CustomMetrics
    let customMetricsContext = SelfDescribingJson(
        schema: "iglu:ru.datago/custom_metric/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
        andData: [
            "customMetric1": 1,
            // "customMetric2" to 2,
            // "customMetric3" to 3,
            // ....
            // "customMetricN" to 9000000000,
            // кол-во параметров ограничено размером отправляемых данных в настройках трекера
                     
        ]
    )
    
    // GA UA: Информация о CustomGroups
    let customGroupsContext = SelfDescribingJson(
        schema: "iglu:ru.datago/custom_group/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
        andData: [
            "customGroup1": "%Value1%",
            // "customGroup2" to "%Value2%",
            // "customGroup3" to "%Value3%",
            // ....
            // "customGroupN" to "%ValueN%",
            // кол-во параметров ограничено размером отправляемых данных в настройках трекера
        ]
    )
    
    // GA4: Пользовательчкие параметры если вы собираете данные в структуре GA4
    let ga4UserParams = SelfDescribingJson(
        schema: "iglu:ru.datago/ga4_user_params_context/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
        andData: [
            "%userParam1%": "%userParamValue1%", //
             //"%userParam2%" to "%userParamValue2%",
             //"%userParam3%" to "%userParamValue3%",
             // ...
             //"%userParamN%" to "%userParamValueN%",
             // кол-во параметров ограничено размером отправляемых данных в настройках трекера
        ]
    )
    
    let staticGlobalContext = GlobalContext(
        // передавайте только то что определили выше
        staticContexts: [
            userContext,
            customDimensionsContext,
            customMetricsContext,
            customGroupsContext,
            ga4UserParams
        ]
    )
    let globalContextsConfig = GlobalContextsConfiguration()
        .contextGenerators(["staticExampleTag": staticGlobalContext])
    
    return globalContextsConfig
    
}
