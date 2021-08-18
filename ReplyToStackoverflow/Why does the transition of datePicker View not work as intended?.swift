//
//  Why does the transition of datePicker View not work as intended?.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 18.08.21.
//
//     https://stackoverflow.com/questions/68824270/why-does-the-transition-of-datepicker-view-not-work-as-intended/68824664#68824664

import SwiftUI

struct Why_does_the_transition_of_datePicker_View_not_work_as_intended_: View {
    
    @State var toggle = false
    @State var date = Date(timeIntervalSinceNow: 0)

    var body: some View {
        ZStack{
            Button("Button"){
                withAnimation(.easeIn) {
                    toggle.toggle()
                }
            }
            .offset(y: -50) // set y offset for prevent overlapping of Button and DatePicker
            
            VStack{
                Spacer()
                if toggle {
                    DatePicker("", selection: $date, displayedComponents: [.date,.hourAndMinute])
                        .padding()
                        .labelsHidden()
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .zIndex(5)
                }
            }
        }
    }

}

struct Why_does_the_transition_of_datePicker_View_not_work_as_intended__Previews: PreviewProvider {
    static var previews: some View {
        Why_does_the_transition_of_datePicker_View_not_work_as_intended_()
    }
}
