//
//  ContentView.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import SwiftUI

struct ContentView: View {
    var datagoTracker: DataGoSnowplowTracker
    var body: some View {
        CaseList(datagoTracker: datagoTracker)
    }
}

#Preview {
    ContentView(datagoTracker: DataGoSnowplowTracker())
}
