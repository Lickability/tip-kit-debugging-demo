//
//  TipDebuggingApp.swift
//  TipDebugging
//
//  Created by Michael Amundsen on 10/18/23.
//

import SwiftUI
import TipKit

@main
struct TipDebuggingApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    try? Tips.resetDatastore()
                    try? Tips.configure()
                }
        }
    }
}
