//
//  AppStorage.swift
//  TipDebugging
//
//  Created by Michael Amundsen on 10/18/23.
//

import Foundation

/// Encapsulates information used to access `@AppStorage`.
enum AppStorageKey {
    
    /// A key for whether tips should be shown as pop overs.
    static let showTipsInPopover = "showTipsInPopover"
    
    /// A key for the tips that are selected to show in tip debugging.
    static let selectedTips = "selectedTips"
}
