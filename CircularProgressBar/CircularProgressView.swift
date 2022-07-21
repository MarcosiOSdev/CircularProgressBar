//
//  CircularProgressView.swift
//  CircularProgressBar
//
//  Created by marcos.felipe.souza on 20/07/22.
//

import SwiftUI

struct CircularProgressView: View {    
    let progress: Double
    let lineCircularColor: Color = .blue.opacity(0.5)
    let lineProgressIndicatorColor: Color = .blue
    let strokeStyle: StrokeStyle = StrokeStyle(lineWidth: 30, lineCap: .round)
    var middleView: AnyView? = nil
    
    var body: some View {
        ZStack(alignment: .center) {
            Circle()
                .stroke(lineCircularColor,lineWidth: 30)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    lineProgressIndicatorColor,
                    style: strokeStyle)
                .rotationEffect(.degrees(-90))
                .animation(.easeOut, value: progress)
            
            middleView
        }
    }
}
