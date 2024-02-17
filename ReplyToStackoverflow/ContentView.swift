//
//  ContentView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("shouldDismiss") var shouldDismiss: Bool = false
    @State private var isShowingSecondView = false
    @State private var isShowingForthView = false
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .clear
        appearance.shadowColor = .clear
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 100) {
                Text("First button")
                    .gesture(
                        DragGesture()
                            .onEnded { _ in
                                print("First button tapped")
                            }
                    )
                
                Text("Second button")
                    .simultaneousGesture(
                        DragGesture()
                            .onEnded { _ in
                                print("Second button tapped")
                            }
                    )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
