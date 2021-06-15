//
//  MiniPlayer for all Views.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//
// https://stackoverflow.com/questions/67987376/how-to-add-view-which-will-be-top-of-all-view-in-swiftui

import SwiftUI

import SwiftUI

class ContentViewModel: ObservableObject {
            
        @Published var isPresented: Bool = false
       
    }

struct MiniPlayer_for_all_Views: View {
      @EnvironmentObject private var miniPlayer: ContentViewModel
    
      var body: some View {
            ZStack {
                VStack {
                    
                    if miniPlayer.isPresented == true {
                        HStack {
                            Color.blue
                            // your miniPlayer View
                        }
                        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                    
                    Button("Show/hide MiniPlayer") {
                        miniPlayer.isPresented.toggle()
                    }

                }
            }
      }
}

struct MiniPlayer_for_all_Views_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer_for_all_Views()
            .environmentObject(ContentViewModel())
    }
}
