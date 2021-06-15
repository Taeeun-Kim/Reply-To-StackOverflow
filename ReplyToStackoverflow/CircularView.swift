//
//  CircularView.swift
//  ReplyToStackoverflow
//
//  Created by Taeeun Kim on 15.06.21.
//

import SwiftUI

struct CircularView: View {
    @State var progress:Double = 0
    var total:Double =  100
    let circleHeight:CGFloat = 217
    @State var xPos:CGFloat = 0.0
        
    @State var yPos:CGFloat = 0.0
    var body: some View {
        let pinHeight = circleHeight * 0.1
        
        VStack {
            
            Circle()
                .trim(from: 0.0, to: 0.6)
                .stroke(Color(.systemGray5),style: StrokeStyle(lineWidth: 8.0, lineCap: .round, dash: [0.1]))
                .frame(width: 278, height: 217, alignment: .center)
                .rotationEffect(.init(degrees: 162))
                .overlay(
                    Circle()
                        .trim(from: 0.0, to: CGFloat(progress) / CGFloat(total))
                        .stroke(Color.purple,style: StrokeStyle(lineWidth: 8.0, lineCap: .round, dash: [0.1]))
                        .rotationEffect(.init(degrees: 162))
                        .rotation3DEffect(
                            .init(degrees: 1),
                            axis: (x: 1.0, y: 0.0, z: 0.0)
                        )
                        .animation(.easeOut)
                        .overlay(
                            Circle()
                                .frame(width: pinHeight, height: pinHeight)
                                .foregroundColor(.blue)

                                .offset(x: 107 - xPos, y: 0 + yPos)
                                .animation(.easeInOut)
                                
                                .rotationEffect(.init(degrees: 162))
                            // 180도 10번 클릭, 1번 클릭에 18도, 90+18=108, 72도
                                
                        )
                )
                .foregroundColor(.red)
            
            Button(action: {
                progress += 5
                if progress >= 65 {
                    progress = 0
                }
            }, label: {
                Text("Button")
            })
            
            
        }

        
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircularView()
    }
}
