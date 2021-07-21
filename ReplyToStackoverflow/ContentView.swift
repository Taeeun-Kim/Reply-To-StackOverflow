//
//  ContentView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct ContentView: View {
    
    private var items = ["1", "2", "3"]
    
    init(){
        UITableView.appearance().backgroundColor = .purple // background color of list
    }
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
                    .listRowBackground(Color.yellow) // background color of listRow
                Text(item)
                    .listRowBackground(Color.blue) // background color of listRow
            }
        }
        .frame(width: 300, height: 600)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
