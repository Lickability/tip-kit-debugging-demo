//
//  TipDebuggingView.swift
//  TipDebugging
//
//  Created by Michael Amundsen on 10/18/23.
//

import SwiftUI
import TipKit

struct TipDebugView: View {
    @AppStorage(AppStorageKey.showTipsInPopover) private var showTipsInPopover: Bool = false
    @Binding private(set) var tipSelections: Set<String>
    
    private let tips: [any Tip] = [GremlinsTip1(), GremlinsTip2(), GremlinsTip3()]

    var body: some View {
        VStack {
            List(tips, id: \.id, selection: $tipSelections) { tip in
                tip.title
            }
            .listStyle(.plain)
            .environment(\.editMode, .constant(EditMode.active))
            .onChange(of: tipSelections) { _, newValue in
                UserDefaults.standard.set(Array(newValue), forKey: AppStorageKey.selectedTips)
            }
            .onAppear {
                if let selection = UserDefaults.standard.value(forKey: AppStorageKey.selectedTips) as? [String] {
                    self.tipSelections = Set(selection)
                }
            }
            
            Toggle(isOn: $showTipsInPopover) {
                Text("Display rule 1 as popovers?")
            }
            .padding(.horizontal, 8)
        }
    }
}
