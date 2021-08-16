//
//  ReplyToStackoverflowApp.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

@main
struct ReplyToStackoverflowApp: App {
    var contentVM: ContentViewModel = ContentViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

extension UIDevice {
        var hasNotch: Bool {
            if #available(iOS 11.0, *) {
                let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
                return keyWindow?.safeAreaInsets.bottom ?? 0 > 0
            }
            return false
        }
    }
