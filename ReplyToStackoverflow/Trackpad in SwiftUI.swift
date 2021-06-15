//
//  Trackpad in SwiftUI.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct Trackpad_in_SwiftUI: View {
    var body: some View {
        ZStack {
            Text("Test")
        }
        .gesture(DragGesture()
                    .onChanged({ value in
                        print("x: \(value.location.x)")
                        print("y: \(value.location.y)")
                    })
        )
    }
}

struct Trackpad_in_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Trackpad_in_SwiftUI()
    }
}
