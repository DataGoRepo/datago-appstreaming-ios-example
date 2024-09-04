//
//  CaseDetails.swift
//  datago-appstreaming-example
//
//  Created by macbook on 31.08.2024.
//

import SwiftUI
import SnowplowTracker

struct CaseDetails: View {
    var datagoTracker: DataGoSnowplowTracker
    @State private var isSwitchOn: Bool = false
    var vm = DataManager.shared
    var globalContext: GlobalContext {
        return vm.globalContext
    }
    var theCase: Case
    var theEventData: EventData
    var body: some View {
        VStack(
            alignment: .leading
        ){
            VStack() {
                HStack(){
                    Spacer()
                    Text(theCase.name)
                        .font(.system(size: 18))
                        .padding()
                    Spacer()
                }
                .background(.gray.opacity(0.1))
            }
            VStack(alignment: .leading) {
                Text(theCase.description)
                    .padding()
                Spacer()
            }
            .frame(height: 500)
            Spacer()
            VStack() {
                Toggle(isOn: $isSwitchOn) {
                    Text("Refresh Global Context: \(isSwitchOn)").font(.system(size: 18))
                }
                .toggleStyle(.automatic)
                .padding()
                .onTapGesture {
                    if isSwitchOn {
                        isSwitchOn = false
                    } else {
                        isSwitchOn = true
                    }
                }
                HStack() {
                    Spacer()
                    Button(
                        "Send Event"
                    ) {
                        if isSwitchOn {
                            datagoTracker.updateGlobalContext(globalContext: globalContext)
                            datagoTracker.trackEvent(event: theEventData.data)
                        } else {
                            datagoTracker.trackEvent(event: theEventData.data)
                        }
                        print("Hello!")
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                    Spacer()
                }
            }
            .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

            Spacer()
            
            
        }
    }
}

#Preview {
    CaseDetails(datagoTracker: DataGoSnowplowTracker(), theCase: Case(id: 0, name: "Case Name", description: "Example of event for GA4 Structure", dataPath: ""), theEventData: EventData(id: 0, data: SelfDescribing(schema: "", payload: [:])))
}
