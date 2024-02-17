//
//  ContentView.swift
//  ReplyToStackOverflow2
//
//  Created by Kim Taeeun on 17.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 100) {
            Text("First button")
                .gesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged { _ in
                            print("First button is dragging")
                        }
                        .onEnded { _ in
                            print("First button tapped")
                        }
                )
            
            Text("Second button")
                .simultaneousGesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged { _ in
                            print("Second button is dragging")
                        }
                        .onEnded { _ in
                            print("Second button tapped")
                        }
                )
        }
    }
}

#Preview {
    ContentView()
}
