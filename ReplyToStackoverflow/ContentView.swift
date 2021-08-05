//
//  ContentView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct ContentView : View {
    var body: some View {

        GradientCircle()
    }
}

struct HueRotationAnimation: ViewModifier {
    @State var hueRotationValue: Double
    func body(content: Content) -> some View {
        content
            .hueRotation(Angle(degrees: hueRotationValue))
            .onAppear() {
                DispatchQueue.main.async {
                    withAnimation(.linear(duration: 20).repeatForever(autoreverses: false)) {
                        hueRotationValue += 360
                    }
                }
            }
    }
}

struct GradientCircle: View {
    var gradient: Gradient
    @State var hueRotationValue: Double = Double.random(in: 0..<360)
    
    var body: some View {
        GeometryReader { geometry in
            Circle()
                .fill(
                    radialGradient(geometry: geometry, gradient: gradient)
                )
                .modifier(HueRotationAnimation(hueRotationValue: hueRotationValue))
        }
    }
}

func radialGradient(geometry: GeometryProxy, gradient: Gradient) -> RadialGradient {
    RadialGradient(gradient: gradient,
                   center: .init(x: 0.82, y: 0.85),
                   startRadius: 0.0,
                   endRadius: max(geometry.size.width, geometry.size.height) * 0.8)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
