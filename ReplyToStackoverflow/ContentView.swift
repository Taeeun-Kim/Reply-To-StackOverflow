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

    var body: some View {
        VStack {
            Text("FirstView")
            
            Button("Go to SecondView") {
                isShowingSecondView.toggle()
            }
            .sheet(isPresented: $isShowingSecondView) {
                SecondView()
                    .onDisappear(perform: {
                        if shouldDismiss {
                            presentationMode.wrappedValue.dismiss()
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                isShowingForthView = true
                            }
                        }
                    })
            }
            .sheet(isPresented: $isShowingForthView) {
                ForthView()
            }
        }
    }
}

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("shouldDismiss") var shouldDismiss: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("SecondView")
                
                NavigationLink(
                    "Go To ThirdView",
                    destination: ThirdView()
                        .onDisappear(perform: {
                            if shouldDismiss {
                                presentationMode.wrappedValue.dismiss()
                            }
                        })
                )
            }
        }
    }
}

struct ThirdView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("shouldDismiss") var shouldDismiss: Bool = false
    
    var body: some View {
        VStack {
            Text("ThirdView")
            
            Button("Go to FirstView and open ForthView") {
                shouldDismiss = true
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ForthView: View {
    
    var body: some View {
        VStack {
            Text("ForthView")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
