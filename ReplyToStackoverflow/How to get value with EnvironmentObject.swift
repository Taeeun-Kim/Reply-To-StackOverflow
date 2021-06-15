//
//  How to get value with EnvironmentObject.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//
// https://stackoverflow.com/questions/67985964/how-to-get-value-on-original-object-with-environmentobject-in-swiftui/67986236#67986236

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
    @Published var score1:Int? = 0
}


struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings
    var body: some View {
        NavigationView {
            NavigationLink(destination: How_to_get_value_with_EnvironmentObject()) {
                Text("Score: \(settings.score)")
            }
        }
    }
}

struct How_to_get_value_with_EnvironmentObject: View {
    @StateObject var settings = GameSettings()
    @EnvironmentObject var settings111: GameSettings

    var body: some View {
        NavigationView {
            VStack {
                // A button that writes to the environment settings
                Text("Current Score--->\(settings.score))")
                Text(settings111.score1 == nil ? "nil" : "\(settings111.score1!)")
                Button("Increase Score") {
                    settings.score += 1
                }

                NavigationLink(destination: ScoreView()) {
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
    }
}


struct How_to_get_value_with_EnvironmentObject_Previews: PreviewProvider {
    static var previews: some View {
        How_to_get_value_with_EnvironmentObject()
            .environmentObject(GameSettings())
    }
}
