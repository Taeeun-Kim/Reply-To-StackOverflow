//
//  ContentView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct ContentView: View {
    
    private var items = ["1", "2", "3"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
                    .listRowBackground(Color.yellow)
                Text(item)
                    .listRowBackground(Color.blue)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
