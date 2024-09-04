//
//  CaseListItem.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import SwiftUI
import SnowplowTracker

struct CaseListItem: View {
    var datagoTracker: DataGoSnowplowTracker
    var theCase: Case
    var eventData: EventData
    var body: some View {

            HStack(
                alignment: .center,
                spacing: 3
            ) {
                Text(theCase.name).font(.system(size: 12))
                Spacer()
//                Label("", systemImage: "chevron.right")
//                  .foregroundColor(.blue)
            }
            .padding()
            .onTapGesture {
                print("")
            }
    }
}

#Preview {
    CaseListItem(datagoTracker: DataGoSnowplowTracker(), theCase: Case(id: 0, name: "Case Name", description: "", dataPath: ""), eventData: EventData(id: 0, data: SelfDescribing(schema: "", payload: [:])))
}
