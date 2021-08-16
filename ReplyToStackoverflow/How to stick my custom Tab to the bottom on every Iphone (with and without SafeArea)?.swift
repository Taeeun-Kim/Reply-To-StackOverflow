//
//  How to stick my custom Tab to the bottom on every Iphone (with and without SafeArea)?.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 16.08.21.
//
// https://stackoverflow.com/questions/68794134/how-to-stick-my-custom-tab-to-the-bottom-on-every-iphone-with-and-without-safea/68795197#68795197

import SwiftUI

struct How_to_stick_my_custom_Tab_to_the_bottom_on_every_Iphone__with_and_without_SafeArea__: View {
    var body: some View {
        if UIDevice.current.hasNotch {
            VStack{
                EntryView()
            }
            .ignoresSafeArea()
        } else {
            VStack{
                EntryView()
                
            }
        }
    }
}

struct EntryView : View {
    
    @State private var isSelected = 0
    
    var body : some View {
        
            VStack {
                    if isSelected == 0 {
                        Spacer()
                        Text("home") }
                        Spacer()
                    
                        TabBar(isSelected: $isSelected)
            }
//            .ignoresSafeArea()
    }
}

struct TabBar: View {
    
    @Binding var isSelected : Int
    
    var body : some View {
        
        HStack {
            
            Button(action: {
                self.isSelected = 0
            }, label: {
                VStack {
                    if isSelected == 0 {
                        
                        Image(systemName: "house.fill")
                    } else {
                        
                        Image(systemName: "house")
                    }
                }
            })
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 12)
        }
    }
}

struct How_to_stick_my_custom_Tab_to_the_bottom_on_every_Iphone__with_and_without_SafeArea___Previews: PreviewProvider {
    static var previews: some View {
        How_to_stick_my_custom_Tab_to_the_bottom_on_every_Iphone__with_and_without_SafeArea__()
    }
}
