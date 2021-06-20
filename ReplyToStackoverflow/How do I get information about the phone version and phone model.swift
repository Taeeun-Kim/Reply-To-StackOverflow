//
//  How do I get information about the phone version and phone model.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 20.06.21.
//

import SwiftUI

// https://stackoverflow.com/questions/68057336/how-do-i-get-information-about-the-phone-version-and-phone-model-swiftui

struct How_do_I_get_information_about_the_phone_version_and_phone_model: View {
    
    var systemVersion = UIDevice.current.systemVersion
    var device = UIDevice.current.name
    
    var body: some View {
        VStack {
            Text("iOS Version: \(systemVersion)")
            Text("Device: \(device)")
        }
    }
}

struct How_do_I_get_information_about_the_phone_version_and_phone_model_Previews: PreviewProvider {
    static var previews: some View {
        How_do_I_get_information_about_the_phone_version_and_phone_model()
    }
}
