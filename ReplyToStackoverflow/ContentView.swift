//
//  ContentView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            Text("Test")
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .gesture(DragGesture()
                    .onChanged({ value in
                        let valueX = String(format: "%.2f", value.location.x / UIScreen.main.bounds.width)
                        let valueY = String(format: "%.2f", value.location.y / UIScreen.main.bounds.height)
                        print("x: \(valueX)")
                        print("y: \(valueY)")
                        
                    })
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
