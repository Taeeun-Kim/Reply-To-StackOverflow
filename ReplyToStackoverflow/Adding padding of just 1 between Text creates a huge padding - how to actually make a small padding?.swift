//
//  Adding padding of just 1 between Text creates a huge padding - how to actually make a small padding?.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 20.06.21.
//
// https://stackoverflow.com/questions/68059981/swiftui-adding-padding-of-just-1-between-text-creates-a-huge-padding-how-to-a

import SwiftUI

struct Adding_padding_of_just_1_between_Text_creates_a_huge_padding___how_to_actually_make_a_small_padding_: View {
    var body: some View {
        VStack {
            VStack{
                Text("Hello World")
                    .background(Color.red)
                    .padding(.bottom, 0)
                Text("padding 0")
                    .background(Color.red)
            }
            .padding()
            
            VStack{
                Text("Hello World")
                    .background(Color.red)
                    .padding(1)
                Text("padding 1 - a huge step-up from 0, why?")
                    .background(Color.red)
            }
            .padding()
            
            VStack{
                Text("Hello World")
                    .background(Color.red)
                    .padding(.bottom, 2)
                Text("padding 2 - just 1 pt larger than 1")
                    .background(Color.red)
            }
            .padding()
        }

    }
}

struct Adding_padding_of_just_1_between_Text_creates_a_huge_padding___how_to_actually_make_a_small_padding__Previews: PreviewProvider {
    static var previews: some View {
        Adding_padding_of_just_1_between_Text_creates_a_huge_padding___how_to_actually_make_a_small_padding_()
    }
}
