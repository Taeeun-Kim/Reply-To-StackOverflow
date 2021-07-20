//
//  SwiftUI how do I temporarily animate a view color's foregroundColor?.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 20.07.21.
//
// https://stackoverflow.com/questions/68448273/swiftui-how-do-i-temporarily-animate-a-view-colors-foregroundcolor

import SwiftUI

struct SwiftUI_how_do_I_temporarily_animate_a_view_color_s_foregroundColor_: View {
    @State private var isSelected: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isSelected = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
                    isSelected = false
                }
            } label: {
                Text("Button")
                    .foregroundColor(isSelected ? Color.red : Color.blue)
                    .border(Color.black, width: 0.33)
            }
        }
    }
}

struct SwiftUI_how_do_I_temporarily_animate_a_view_color_s_foregroundColor__Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_how_do_I_temporarily_animate_a_view_color_s_foregroundColor_()
    }
}
