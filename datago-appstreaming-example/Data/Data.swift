//
//  Data.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import Foundation
import SnowplowTracker

struct EventData: Identifiable {
    var id: Int
    var data: SelfDescribing
}

struct Case: Identifiable {
    var id: Int
    var name: String
    var description: String
    var dataPath: String
}

class DataManager {
    static let shared = DataManager()
    let cases: [Case] = [
        Case(
            id: 1,
            name: "Send Screen View",
            description: "Example how sent screenView event",
            dataPath: ""
        ),

        Case(
            id: 2,
            name: "Send event for GA UA Structure",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 3,
            name: "Send event for GA4 Structure",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 4,
            name: "GA UA: Ecommerce: Просмотр списка товаров",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 5,
            name: "GA4: Ecommerce: Просмотр списка товаров",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 6,
            name: "GA UA: Ecommerce: Клик по товару из списка",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 7,
            name: "GA4: Ecommerce: Клик по товару из списка",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 8,
            name: "GA UA: Ecommerce: Просмотр товара",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 9,
            name: "GA4: Ecommerce: Просмотр товара",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 10,
            name: "GA UA: Ecommerce: Добавление товара в корзину",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 11,
            name: "GA4: Ecommerce: Добавление товара в корзину",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 12,
            name: "GA UA: Ecommerce: Удаление товара из корзины",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 13,
            name: "GA4: Ecommerce: Удаление товара из корзины",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 14,
            name: "GA UA: Ecommerce: Старт оформления покупки",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 15,
            name: "GA4: Ecommerce: Старт оформления покупки",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 16,
            name: "GA UA: Ecommerce: Покупка",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 17,
            name: "GA4: Ecommerce: Покупка",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 18,
            name: "GA UA: Ecommerce: Возврат",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 19,
            name: "GA4: Ecommerce: Возврат",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 20,
            name: "GA UA: Ecommerce: Просмотр промо",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 21,
            name: "GA4: Ecommerce: Просмотр промо",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 22,
            name: "GA UA: Ecommerce: Клик по промо",
            description: "Example of event for GA UA Structure",
            dataPath: ""
        ),

        Case(
            id: 23,
            name: "GA4: Ecommerce: Клик по промо",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 24,
            name: "GA4: Ecommerce: Просмотр корзины",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 25,
            name: "GA4: Ecommerce: Добавление в список желаемого",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 26,
            name: "GA4: Ecommerce: Указание сведений о доставке",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        ),

        Case(
            id: 27,
            name: "GA4: Ecommerce: Указание сведений об оплате",
            description: "Example of event for GA4 Structure",
            dataPath: ""
        )
    ]
    
    let eventData: [Int: EventData] = [
        1: EventData(
        id: 1,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "event": "ScreenView", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "screenName": "%screenNameValue%", //Название экрана: String: Обязательный параметр
              "screenPath": "%screenPathValue%", //URI экрана: String: Обязательный параметр

              // В eventContext любые дополнительные параметры просмотра экрана
              // Все значения должны быть типа String
              // Кол-во ограничено настройками трекера на размер запроса
              "eventContext": [
              "eventContext1": "eventContextValue1",
              "eventContext2": "eventContextValue2",
              "eventContext3": "eventContextValue3",
              ],
            ]
          )
        ),
        2: EventData(
        id: 2,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],
            ]
          )
        ),
        3: EventData(
        id: 3,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1%": "%eventParamsValue1%",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
            ]
          )
        ),
        4: EventData(
        id: 4,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "currencyCode": "RUR", // Валюта: String: НЕ обязательный параметр
                "impressions": [
                  [
                    "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                    "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                    "price": "%price%", // Цена: String: НЕ обязательный параметр
                    "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                    "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                    "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр
                    "position": 1, // Позиция в списке: String: НЕ обязательный параметр
                  ],
                  [
                    "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                    "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                    "price": "%price%", // Цена: String: НЕ обязательный параметр
                    "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                    "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                    "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр
                    "position": 1, // Позиция в списке: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        5: EventData(
        id: 5,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "view_item_list", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "item_list_id": "%item_list_id%", //  ID списка: String: НЕ обязательный параметр
                "item_list_name": "%item_list_name%", //  Название списка: String: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        6: EventData(
        id: 6,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "click": [
                  "actionField": [
                    // Не обязательный параметр
                    "list": "%list%", // Название списка: String: НЕ обязательный параметр
                    "step": 1, // Шаг в воронке: Int: НЕ обязательный параметр
                    "option": "%option%", // Опции: String: НЕ обязательный параметр
                  ],
                  "currencyCode": "RUR", // Валюта: String: НЕ обязательный параметр
                  "products": [
                    [
                      "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                      "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                      "price": "%price%", // Цена: String: НЕ обязательный параметр
                      "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                      "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                      "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                      "quantity": 4, // Кол-во продукта: Int: НЕ обязательный параметр
                      "position": 1, // Позиция в списке: Int: НЕ обязательный параметр
                      "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр

                      // Кастомные параметры
                      // Все значения должны быть типа String
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "dimension1": "%dimensionValue1%",

                      // Кастомные метрики
                      // Все значения должны быть типа Float
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "metric1": 12.4,
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        7: EventData(
        id: 7,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "select_item", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "item_list_id": "%item_list_id%", //  ID списка: String: НЕ обязательный параметр
                "item_list_name": "%item_list_name%", //  Название списка: String: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                     "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        8: EventData(
        id: 8,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "detail": [
                  "actionField": [
                    // Не обязательный параметр
                    "list": "%list%", // Название списка: String: НЕ обязательный параметр
                    "step": 1, // Шаг в воронке: Int: НЕ обязательный параметр
                    "option": "%option%", // Опции: String: НЕ обязательный параметр
                  ],
                  "products": [
                    [
                      "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                      "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                      "price": "%price%", // Цена: String: НЕ обязательный параметр
                      "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                      "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                      "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                      "quantity": 4, // Кол-во продукта: Int: НЕ обязательный параметр
                      "position": 1, // Позиция в списке: Int: НЕ обязательный параметр
                      "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр

                      // Кастомные параметры
                      // Все значения должны быть типа String
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "dimension1": "%dimensionValue1%",

                      // Кастомные метрики
                      // Все значения должны быть типа Float
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "metric1": 12.4,
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        9: EventData(
        id: 9,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "view_item", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        10: EventData(
        id: 10,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "add": [
                  "actionField": [
                    // Не обязательный параметр
                    "list": "%list%", // Название списка: String: НЕ обязательный параметр
                    "step": 1, // Шаг в воронке: Int: НЕ обязательный параметр
                    "option": "%option%", // Опции: String: НЕ обязательный параметр
                  ],
                  "currencyCode": "RUR", // Валюта: String: НЕ обязательный параметр
                  "products": [
                    [
                      "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                      "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                      "price": "%price%", // Цена: String: НЕ обязательный параметр
                      "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                      "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                      "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                      "quantity": 4, // Кол-во продукта: Int: НЕ обязательный параметр
                      "position": 1, // Позиция в списке: Int: НЕ обязательный параметр
                      "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр

                      // Кастомные параметры
                      // Все значения должны быть типа String
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "dimension1": "%dimensionValue1%",

                      // Кастомные метрики
                      // Все значения должны быть типа Float
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "metric1": 12.4,
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        11: EventData(
        id: 11,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "add_to_cart", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        12: EventData(
        id: 12,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "remove": [
                  "actionField": [
                    // Не обязательный параметр
                    "list": "%list%", // Название списка: String: НЕ обязательный параметр
                    "step": 1, // Шаг в воронке: Int: НЕ обязательный параметр
                    "option": "%option%", // Опции: String: НЕ обязательный параметр
                  ],
                  "currencyCode": "RUR", // Валюта: String: НЕ обязательный параметр
                  "products": [
                    [
                      "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                      "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                      "price": "%price%", // Цена: String: НЕ обязательный параметр
                      "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                      "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                      "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                       "quantity": 4, // Кол-во продукта: Int: НЕ обязательный параметр
                      "position": 1, // Позиция в списке: Int: НЕ обязательный параметр
                      "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр

                      // Кастомные параметры
                      // Все значения должны быть типа String
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "dimension1": "%dimensionValue1%",

                      // Кастомные метрики
                      // Все значения должны быть типа Float
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "metric1": 12.4,
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        13: EventData(
        id: 13,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "remove_from_cart", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        14: EventData(
        id: 14,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "checkout": [
                  "actionField": [
                    // Не обязательный параметр
                    "list": "%list%", // Название списка: String: НЕ обязательный параметр
                    "step": 1, // Шаг в воронке: Int: НЕ обязательный параметр
                    "option": "%option%", // Опции: String: НЕ обязательный параметр
                  ],
                  "currencyCode": "RUR", // Валюта: String: НЕ обязательный параметр
                  "products": [
                    [
                      "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                      "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                      "price": "%price%", // Цена: String: НЕ обязательный параметр
                      "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                      "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                      "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "quantity": 4, // Кол-во продукта: Int: НЕ обязательный параметр
                      "position": 1, // Позиция в списке: Int: НЕ обязательный параметр
                      "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр

                      // Кастомные параметры
                      // Все значения должны быть типа String
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "dimension1": "%dimensionValue1%",

                      // Кастомные метрики
                      // Все значения должны быть типа Float
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "metric1": 12.4,
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        15: EventData(
        id: 15,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "begin_checkout", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        16: EventData(
        id: 16,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "purchase": [
                  "actionField": [
                    // Не обязательный параметр
                    "id": "%id%", // ID транзакции: String: обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик: String: НЕ обязательный параметр
                    "revenue": 150.12, // Доход от транзакции: Float: НЕ обязательный параметр
                    "tax": 20.5, // Сумма налогов: Float: НЕ обязательный параметр
                    "shipping": 20.5, // Стоимость доставки: Float: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: обязательный параметр
                  ],
                  "currencyCode": "RUR", // Валюта: String: НЕ обязательный параметр
                  "products": [
                    [
                      "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                      "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                      "price": "%price%", // Цена: String: НЕ обязательный параметр
                      "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                      "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                      "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                       "quantity": 4, // Кол-во продукта: Int: НЕ обязательный параметр
                      "position": 1, // Позиция в списке: Int: НЕ обязательный параметр
                      "list": "%list%", // Название показанного списка: String: НЕ обязательный параметр

                      // Кастомные параметры
                      // Все значения должны быть типа String
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "dimension1": "%dimensionValue1%",

                      // Кастомные метрики
                      // Все значения должны быть типа Float
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "metric1": 12.4,
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        17: EventData(
        id: 17,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "purchase", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "transaction_id": "%transaction_id%", // ID транзакции: String: НЕ обязательный параметр
                "value": 344.5, // Сумма транзакции: Float: НЕ обязательный параметр
                "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                "shipping": 12.4, // Стоимость доставки: Float: НЕ обязательный параметр
                "tax": 12.4, // Налог: Float: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        18: EventData(
        id: 18,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "refund": [
                  "actionField": [
                    // Не обязательный параметр
                    "id": "%id%", // ID транзакции: String: обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик: String: НЕ обязательный параметр
                    "revenue": 150.12, // Доход от транзакции: Float: НЕ обязательный параметр
                    "tax": 20.5, // Сумма налогов: Float: НЕ обязательный параметр
                    "shipping": 20.5, // Стоимость доставки: Float: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: обязательный параметр
                  ],
                  "currencyCode": "RUR", // Валюта: String: НЕ обязательный параметр
                  "products": [
                    [
                      "name": "%product name%", // название продукта: String: обязательный параметр, если не указан id
                      "id": "%id%", // id продукта: String: обязательный параметр, если не указан name
                      "price": "%price%", // Цена: String: НЕ обязательный параметр
                      "brand": "%brand%", // Название бренда: String: НЕ обязательный параметр
                      "category": "%category%", // Категрия продукта: String: НЕ обязательный параметр
                      "variant": "%variant%", // Вариант продукта: String: НЕ обязательный параметр
                      "quantity": 4, // Кол-во продукта: Int: НЕ обязательный параметр
                      "position": 1, // Позиция в списке: Int: НЕ обязательный параметр

                      // Кастомные параметры
                      // Все значения должны быть типа String
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "dimension1": "%dimensionValue1%",

                      // Кастомные метрики
                      // Все значения должны быть типа Float
                      // Кол-во параметрок ограничено настройками трекера на размер запроса
                      "metric1": 12.4,
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        19: EventData(
        id: 19,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "refund", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "transaction_id": "%transaction_id%", // ID транзакции: String: НЕ обязательный параметр
                "value": 344.5, // Сумма транзакции: Float: НЕ обязательный параметр
                "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                "shipping": 12.4, // Стоимость доставки: Float: НЕ обязательный параметр
                "tax": 12.4, // Налог: Float: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        20: EventData(
        id: 20,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "promoView": [
                  "promotions": [
                    [
                      "name": "%promo name%", // название промо: String: обязательный параметр, если не указан id
                      "id": "%id%", // id промо: String: обязательный параметр, если не указан name
                      "creative": "%creative%", // Название креатива: String: НЕ обязательный параметр
                      "position": "%position%", // Название позиции: String: НЕ обязательный параметр
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        21: EventData(
        id: 21,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "view_promotion", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                "creative_slot": "%creative_slot%", // Название рекламного места: String: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        22: EventData(
        id: 22,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "UA", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "%eventName%", // Название события: String: Обязательный параметр
              "eventcategory": "%eventCategoryValue%", // Категория события: String: Обязательный параметр: по аналогии с GA UA
              "eventAction": "%eventActionValue%", // Действие по события: String: Обязательный параметр: по аналогии с GA UA
              "eventLabel": "%eventLabelValue%", // Ярлык события: String: НЕ Обязательный параметр: по аналогии с GA UA
              "eventValue": "%eventValueValue%", // Ценность события: String: НЕ Обязательный параметр: по аналогии с GA UA

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметрок ограничено настройками трекера на размер запроса
              "eventContext": [
                "eventContext1": "eventContextValue1",
                "eventContext2": "eventContextValue2",
                "eventContext3": "eventContextValue3",
              ],

              // Блок с информацией по ecommerce в структуре  GA UA
              "ecommerce": [
                "promoClick": [
                  "promotions": [
                    [
                      "name": "%promo name%", // название промо: String: обязательный параметр, если не указан id
                      "id": "%id%", // id промо: String: обязательный параметр, если не указан name
                      "creative": "%creative%", // Название креатива: String: НЕ обязательный параметр
                      "position": "%position%", // Название позиции: String: НЕ обязательный параметр
                    ],
                  ],
                ],
              ],
            ]
          )
        ),
        23: EventData(
        id: 23,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "select_promotion", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                "creative_slot": "%creative_slot%", // Название рекламного места: String: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        24: EventData(
        id: 24,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "view_cart", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        25: EventData(
        id: 25,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "add_to_wishlist", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                     "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        26: EventData(
        id: 26,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "add_shipping_info", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                "shipping_tier": "%shipping_tier%", // Категория доставки: String: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                     "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        27: EventData(
        id: 27,
        data: SelfDescribing(
            schema: "iglu:ru.datago/event/jsonschema/1-0-0", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
            payload: [
              "eventStructure": "GA4", // Это константное значение: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ
              "event": "add_payment_info", // Название события: String: НЕ МЕНЯТЬ!!! НЕ УДАЛЯТЬ

              // В eventContext любые дополнительные параметры события
              // Все значения должны быть типа String
              // Кол-во параметров ограничено настройками трекера на размер запроса
              "eventParams": [
                "%eventParamsName1$": "%eventParamsValue1",
                "%eventParamsName2%": "%eventParamsValue2%",
                "%eventParamsName3%": "%eventParamsValue3%",
              ],
              "ecommerce": [
                "currency": "%currency%", // Валюта: String: НЕ обязательный параметр
                "value": 344.5, // Денежная ценноть события: Float: НЕ обязательный параметр
                "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                "payment_type": "%payment_type%", // Метод оплаты: String: НЕ обязательный параметр
                "items": [
                  [
                    "item_name": "%item_name%", // Название продукта: String: обязательный параметр, если не указан item_id
                    "item_id": "%item_id%", // ID продукта: String: обязательный параметр, если не указан item_name
                    "price": 23.5, //  Цена продукта: Float: НЕ обязательный параметр
                    "item_brand": "%item_brand%", // Бренд продукта: String: НЕ обязательный параметр
                    "item_category": "%item_category%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category2": "%item_category2%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category3": "%item_category3%", // Категория продукта: String: НЕ обязательный параметр
                    "item_category4": "%item_category4%", // Категория продукта: String: НЕ обязательный параметр
                    "item_variant": "%item_variant%", // Вариант продукта: String: НЕ обязательный параметр
                    "promotion_id": "%promotion_id%", // ID промо: String: НЕ обязательный параметр
                    "promotion_name": "%promotion_name%", // Название промо: String: НЕ обязательный параметр
                    "creative_name": "%creative_name%", // Название креатива: String: НЕ обязательный параметр
                    "creative_slot": "%creative_slot%", // Слот креатива: String: НЕ обязательный параметр
                    "location_id": "%location_id%", // ID локации: String: НЕ обязательный параметр
                    "item_list_name": "%item_list_name%", // Название списка: String: НЕ обязательный параметр
                    "item_list_id": "%item_list_id%", // ID списка: String: НЕ обязательный параметр
                    "index": 1, // Позиция продукта в списке: Int: НЕ обязательный параметр
                    "quantity": 6, // Кол-во продукта: Int: НЕ обязательный параметр
                    "affiliation": "%affiliation%", // Поставщик продукта: String: НЕ обязательный параметр
                    "coupon": "%coupon%", // Купон: String: НЕ обязательный параметр
                    "discount": 24.5, // Скидка: Float: НЕ обязательный параметр

                    // Дополнительные параметры продукта
                    // Тип String
                    // Кол-во параметров ограничено настройками трекера на размер запроса
                    "%customParamName1%": "%customParamValue1", // Кастомный параметр 1: String: НЕ обязательный параметр
                    "%customParamNameN%": "%customParamValueN", // Кастомный параметр N: String: НЕ обязательный параметр
                  ],
                ],
              ],
            ]
          )
        ),
        ]

    
    let globalContext: GlobalContext  = GlobalContext(
        // передавайте только то что определили выше
        staticContexts: [
            SelfDescribingJson(
                schema: "iglu:ru.datago/user_context/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
                andData: [
                    "userId": "%NewuserId%", // userId: String: optional: id пользователя
                    "userEmail": "%NewhashUserEmail%", // userEmail: String: optional: Хеш от email
                    "userPhone": "%NewhashPhone%", // userPhone: String: optional: Хеш от телефона пользователя
                    "userDataGoId": "",
                ]
            ),
            SelfDescribingJson(
                schema: "iglu:ru.datago/custom_dimension/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
                andData: [
                    "customDimension1": "%NewValue1%",
                   // "customDimension2" to "%Value2%",
                   // "customDimension3" to "%Value3%",
                   // ....
                   // "customDimensionN" to "%ValueN%",
                   // кол-во параметров ограничено размером отправляемых данных в настройках трекера
                             
                ]
            ),
            SelfDescribingJson(
                schema: "iglu:ru.datago/custom_metric/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
                andData: [
                    "customMetric1": 232,
                    // "customMetric2" to 2,
                    // "customMetric3" to 3,
                    // ....
                    // "customMetricN" to 9000000000,
                    // кол-во параметров ограничено размером отправляемых данных в настройках трекера
                             
                ]
            ),
            SelfDescribingJson(
                schema: "iglu:ru.datago/custom_group/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
                andData: [
                    "customGroup1": "%NewValue1%",
                    // "customGroup2" to "%Value2%",
                    // "customGroup3" to "%Value3%",
                    // ....
                    // "customGroupN" to "%ValueN%",
                    // кол-во параметров ограничено размером отправляемых данных в настройках трекера
                ]
            ),
            SelfDescribingJson(
                schema: "iglu:ru.datago/ga4_user_params_context/jsonschema/1-0-0", // НЕ УДАЛЯТЬ!!! НЕ МЕНЯТЬ!!!
                andData: [
                    "%userParam1%": "%NuewUserParamValue1%", //
                     //"%userParam2%" to "%userParamValue2%",
                     //"%userParam3%" to "%userParamValue3%",
                     // ...
                     //"%userParamN%" to "%userParamValueN%",
                     // кол-во параметров ограничено размером отправляемых данных в настройках трекера
                ]
            )
        ]
    )
}
