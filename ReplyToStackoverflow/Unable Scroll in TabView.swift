//
//  Unable Scroll in TabView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 03.07.21.
//

// https://stackoverflow.com/questions/68238761/how-to-stop-the-page-from-being-able-to-be-scrolled-up-and-down-while-using-a-pa/68238919#68238919

import SwiftUI

struct Unable_Scroll_in_TabView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            TabView {
                Text("Saturday")
                Text("Sunday")
                Text("Monday")
                Text("Tuesday")
                Text("Wednesday")
                Text("Thursday")
                Text("Friday")
            }
            .tabViewStyle(PageTabViewStyle())
            .frame(width: 300, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 300, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.blue)
        .onAppear(perform: {
            UIScrollView.appearance().alwaysBounceVertical = false
        })
    }
}

struct Unable_Scroll_in_TabView_Previews: PreviewProvider {
    static var previews: some View {
        Unable_Scroll_in_TabView()
    }
}
