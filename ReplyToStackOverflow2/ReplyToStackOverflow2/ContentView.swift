//
//  ContentView.swift
//  ReplyToStackOverflow2
//
//  Created by Kim Taeeun on 17.02.2024.
//

import SwiftUI
import AVKit

    struct ContentView: View {
        
        let bottomId = 50
        
        var body: some View {
            ScrollViewReader { proxy in
                List {
                    Button {
                        proxy.scrollTo(bottomId)
                    } label: {
                        Text("Goto bottom")
                    }
                    
                    Text("bottom")
                        .id(bottomId)
                }
            }
        }
    }

//#Preview {
//    ContentView()
//}
