//
//  ReplyToStackoverflowApp.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

@main
struct ReplyToStackoverflowApp: App {
    var settings: GameSettings = GameSettings()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settings)
        }
    }
}
