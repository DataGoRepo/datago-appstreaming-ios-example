//
//  Snowplow.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import Foundation
import SnowplowTracker
var trackerConfig = TrackerConfiguration(
    appId: "%AppId%" // Идентификатор приложения
)
    .base64Encoding(false)
    .sessionContext(true)
    .platformContext(true)
    .lifecycleAutotracking(true)
    .screenViewAutotracking(true)
    .screenContext(true)
    .applicationContext(true)
    .exceptionAutotracking(true)
    .installAutotracking(true)
    .userAnonymisation(false)
    .immersiveSpaceContext(true)
    .deepLinkContext(true)
    .exceptionAutotracking(true)
    .logLevel(.off)
var networkConfig = NetworkConfiguration(
    endpoint: DATAGO_TRACKER_ENDPOINT
)
var sessionConfig = SessionConfiguration(
    foregroundTimeout: Measurement(value: 30, unit: .minutes),
    backgroundTimeout: Measurement(value: 30, unit: .minutes)
)

class DataGoSnowplowTracker {
    var tracker  = Snowplow.createTracker(
        namespace: DATAGO_TRACKER_NAME,
        network: networkConfig,
        configurations: [trackerConfig,sessionConfig, createGlobalContext()]
    )
    
    func trackScreenView(event: ScreenView) {
        self.tracker.track(event)
    }
    
    func trackEvent(event: SelfDescribing) {
        self.tracker.track(event)
    }
    
    func updateGlobalContext(globalContext: GlobalContext) {
        self.tracker.globalContexts?.remove(tag: DATAGO_GLOBAL_CONTEXT_TAG)
        self.tracker.globalContexts?.add(tag: DATAGO_GLOBAL_CONTEXT_TAG, contextGenerator: globalContext)
    }
    
    
}
