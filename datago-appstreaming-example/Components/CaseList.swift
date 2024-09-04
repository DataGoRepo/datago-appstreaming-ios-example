//
//  CaseList.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import SwiftUI
import SnowplowTracker

struct CaseList: View {
    var datagoTracker: DataGoSnowplowTracker
    var vm = DataManager.shared
    var caseList: [Case] {
        return vm.cases
    }
    var eventData: [Int: EventData] {
        return vm.eventData
    }
    var body: some View {
        NavigationView {
            List(){
                ForEach(caseList) {
                    item in
                    NavigationLink(
                        destination: CaseDetails(
                            datagoTracker: datagoTracker,
                            theCase: item,
                            theEventData: eventData[item.id] ?? EventData(id: 0, data: SelfDescribing(schema: "", payload: [:]))
                        )) {
                        CaseListItem(
                            datagoTracker: datagoTracker,
                            theCase: item,
                            eventData: eventData[item.id] ?? EventData(id: 0, data: SelfDescribing(schema: "", payload: [:]))
                        )
                    }
                    
                }
            }
        }
    }
}

#Preview {
    CaseList(datagoTracker: DataGoSnowplowTracker())
}
