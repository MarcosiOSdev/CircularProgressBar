//
//  ContentView.swift
//  CircularProgressBar
//
//  Created by marcos.felipe.souza on 20/07/22.
//
import SwiftUI

struct ContentView: View {
    
    @State
    private var progress = 0.0
    
    var middleView: some View {
        VStack {
            Image("Lupa")
                .resizable()
                .frame(width: 18, height: 18)
                .scaledToFit()
            Text("\(progress * 100, specifier: "%.0f")").bold()
                .font(.largeTitle)
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            
                CircularProgressView(
                    progress: progress,
                    middleView: AnyView(middleView)
                    )
                    .frame(width: 200, height: 200)
                
            Slider(value: $progress, in: 0...1)
                .padding(.all, 32)
            Button("Reset") {
                resetProgress()
            }.buttonStyle(.borderedProminent)
        }
    }
    
    func resetProgress() {
        progress = 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
