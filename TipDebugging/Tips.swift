//
//  Tips.swift
//  TipDebugging
//
//  Created by Michael Amundsen on 10/18/23.
//

import TipKit

struct GremlinsTip1: Tip {
    
    // MARK: - Tip
    
    var title: Text {
        Text("Rule #1: No Bright Light")
            .foregroundStyle(.blue)
    }

    var message: Text? {
        Text("Bright lights harm them, and sunlight can kill them. \(Image(systemName: "sun.max")) Ensure you keep your Mogwai away from the light!")
    }

    var image: Image? {
        Image(systemName: "lightbulb.fill")
            .symbolRenderingMode(.hierarchical)
    }

    var actions: [Action] {
        [.init(title: "Keep It Safe")]
    }
}

struct GremlinsTip2: Tip {
    
    // MARK: - Tip
    
    var title: Text {
        Text("Rule #2: Don't Get Them Wet")
    }

    var message: Text? {
        Text("Never let water touch them. \(Image(systemName: "drop.triangle")) If you do, they'll multiply!")
    }

    var image: Image? {
        Image(systemName: "umbrella.fill")
            .symbolRenderingMode(.hierarchical)
    }

    var actions: [Action] {
        [.init(title: "Stay Dry")]
    }
}

struct GremlinsTip3: Tip {
    
    // MARK: - Tip
    
    var title: Text {
        Text("Rule #3: No Feeding After Midnight")
    }

    var message: Text? {
        Text("Never feed them after the clock strikes twelve. \(Image(systemName: "moon.circle")) You won't like what they become.")
    }

    var image: Image? {
        Image(systemName: "clock.fill")
            .symbolRenderingMode(.hierarchical)
    }

    var actions: [Action] {
        [.init(title: "Watch The Clock")]
    }
}
