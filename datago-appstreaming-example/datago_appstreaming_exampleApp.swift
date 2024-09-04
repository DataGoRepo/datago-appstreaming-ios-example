//
//  datago_appstreaming_exampleApp.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import SwiftUI


@main
struct datago_appstreaming_exampleApp: App {
    var datagoTracker: DataGoSnowplowTracker = DataGoSnowplowTracker()
    var body: some Scene {
        WindowGroup {
            ContentView(datagoTracker: datagoTracker)
        }
    }
}
