//
//  ContentView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct ContentView: View {
    
    @State var number: Int = 1
    
    var body: some View {
        VStack {
            if number <= 15 {
                Text("\(number)")
                    .foregroundColor(.green)
                    .font(.system(size: 50))
                    .fontWeight(.bold)
            }
            
            Button {
               number += 1
            } label: {
                Text("Add Number")
                    .foregroundColor(.blue)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
            }
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(30)
        .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
