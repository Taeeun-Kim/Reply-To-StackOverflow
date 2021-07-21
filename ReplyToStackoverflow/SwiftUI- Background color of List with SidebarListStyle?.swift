//
//  SwiftUI- Background color of List with SidebarListStyle?.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 21.07.21.
//
// https://stackoverflow.com/questions/68472622/swiftui-background-color-of-list-with-sidebarliststyle/68473320?noredirect=1#comment121013409_68473320

import SwiftUI

struct SwiftUI__Background_color_of_List_with_SidebarListStyle_: View {
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

struct SwiftUI__Background_color_of_List_with_SidebarListStyle__Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI__Background_color_of_List_with_SidebarListStyle_()
    }
}
