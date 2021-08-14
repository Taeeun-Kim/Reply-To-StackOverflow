//
//  PageTabViewStyle Right to left.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 14.08.21.
// https://stackoverflow.com/questions/68780428/pagetabviewstyle-right-to-left

import SwiftUI

struct PageTabViewStyle_Right_to_left: View {
    
    // put the tag number of the last page
    @State private var selectedTab = 2
    
    var body: some View {
        VStack {
            TabView(selection: $selectedTab){
                Text("First Page")
                    .tag(0)
                Text("Second Page")
                    .tag(1)
                Text("Third Page")
                    .tag(2)
            }
            .frame(width: 300, height: 500)
            .tabViewStyle(PageTabViewStyle())
            .background(Color.purple)
            .cornerRadius(15)
        }
    }
}

struct PageTabViewStyle_Right_to_left_Previews: PreviewProvider {
    static var previews: some View {
        PageTabViewStyle_Right_to_left()
    }
}
