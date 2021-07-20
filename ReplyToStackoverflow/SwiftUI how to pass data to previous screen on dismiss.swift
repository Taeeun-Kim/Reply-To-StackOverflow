//
//  SwiftUI how to pass data to previous screen on dismiss.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 16.07.21.
//

// https://stackoverflow.com/questions/68408668/swiftui-how-to-pass-data-to-previous-screen-on-dismiss/68408865#68408865

import SwiftUI

struct SwiftUI_how_to_pass_data_to_previous_screen_on_dismiss: View {
    @State var showModel = false
    @State var filter = Filter()
    
    var body: some View {
        VStack {
            Text("\(filter.fromDate ?? "no date") and \(filter.toDate ?? "no date")")
            Button(action: {
                showModel.toggle()
            }, label: {
                Text("Show filters")
            }).sheet(isPresented: $showModel, content: {
                FilterView(filter: $filter)
            })
        }
    }
}

struct FilterView: View {
    @Environment(\.presentationMode) var presentationMode

    var onDismiss: ((_ model: Filter) -> Void)?
    @Binding var filter: Filter

    var body: some View {
        
        VStack {
            Button(action: {
                // Pass data from here to ContentView
                filter = Filter(fromDate: "10/07/2021", toDate: "12/07/2021")
                onDismiss?(filter)
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Applay Filters")
            }).padding()
        }.padding()
    }
}

struct Filter {
    var fromDate: String?
    var toDate: String?
}

struct SwiftUI_how_to_pass_data_to_previous_screen_on_dismiss_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI_how_to_pass_data_to_previous_screen_on_dismiss()
    }
}
