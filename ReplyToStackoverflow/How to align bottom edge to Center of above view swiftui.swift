//
//  How to align bottom edge to Center of above view swiftui.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 21.07.21.
//
// https://stackoverflow.com/questions/68472957/how-to-align-bottom-edge-to-center-of-above-view-swiftui

import SwiftUI

struct How_to_align_bottom_edge_to_Center_of_above_view_swiftui: View {
    var body: some View {
        ZStack{
            VStack {
                LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue]), startPoint: .top, endPoint: .bottom)
                    .frame(width: UIScreen.main.bounds.width, height: 180, alignment: .center)
                    .clipped()
                    .overlay(
                        Image(systemName: "person.circle.fill")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: .fit)
                            .offset(y: 90) // 1/2 of view height (180*(1/2)
                    )
                    .edgesIgnoringSafeArea(.all) // for ignore safe area
                
                Spacer()
            }
        }
    }
}

struct How_to_align_bottom_edge_to_Center_of_above_view_swiftui_Previews: PreviewProvider {
    static var previews: some View {
        How_to_align_bottom_edge_to_Center_of_above_view_swiftui()
    }
}
