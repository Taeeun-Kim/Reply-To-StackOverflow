//
//  SwiftUI- Background color of List with SidebarListStyle?.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 21.07.21.
//
// https://stackoverflow.com/questions/68472622/swiftui-background-color-of-list-with-sidebarliststyle

import SwiftUI

struct SwiftUI__Background_color_of_List_with_SidebarListStyle_: View {
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

struct SwiftUI__Background_color_of_List_with_SidebarListStyle__Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI__Background_color_of_List_with_SidebarListStyle_()
    }
}
