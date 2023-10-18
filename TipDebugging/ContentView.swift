//
//  ContentView.swift
//  TipDebugging
//
//  Created by Michael Amundsen on 10/18/23.
//

import SwiftUI
import TipKit

struct ContentView: View {
    @AppStorage(AppStorageKey.showTipsInPopover) private var showTipsInPopover: Bool = false
    @State private var isShowingSettings = false
    @State private var tipSelections: Set<String> = Set(UserDefaults.standard.value(forKey: AppStorageKey.selectedTips) as? [String] ?? [])
    
    private var title: some View {
        Text("Want to own a Gremlin?")
            .font(.title3)
            .bold()
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                Spacer()
                
                if !showTipsInPopover {
                    let tip1 = GremlinsTip1()
                    
                    if tipSelections.contains(where: { $0 == tip1.id }) == true {
                        TipView(tip1)
                            .tipBackground(.blue.opacity(0.25))
                    }
                    
                    let tip2 = GremlinsTip2()
                    
                    if tipSelections.contains(where: { $0 == tip2.id }) == true {
                        TipView(tip2)
                    }
                    
                    let tip3 = GremlinsTip3()
                    
                    if tipSelections.contains(where: { $0 == tip3.id }) == true {
                        TipView(tip3)
                    }
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    let tip1 = GremlinsTip1()
                    
                    if UserDefaults.standard.bool(forKey: AppStorageKey.showTipsInPopover), tipSelections.contains(where: { $0 == tip1.id }) == true {
                        title
                        .popoverTip(tip1)
                    } else {
                        title
                    }
                    
                    Text("Use the menu to see various tips about the rules you must follow.")
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                
                TipDebugView(tipSelections: $tipSelections)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
