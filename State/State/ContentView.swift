//
//  ContentView.swift
//  State
//
//  Created by Burak Furkan Asilturk on 6.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying: Bool = false
    @State private var counter: Int = 0
    
    var body: some View {
        
        VStack {
            Button {
                isPlaying.toggle()
            } label: {
                let name = isPlaying ? "stop.circle.fill" : "play.circle.fill"
                Image(systemName: name)
                    .font(.system(size: 90))
                    .foregroundColor(isPlaying ? .red : .green)
            }
            
            Button {
                counter += 1
            } label: {
                Text(String(counter))
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                    .frame(width: 200, height: 200)
                    .background(Color.orange)
                    .clipShape(Circle())
            }
            
            /// with binding
            HStack {
                CounterButton(counter: $counter, color: .blue)
                CounterButton(counter: $counter, color: .purple)
                CounterButton(counter: $counter, color: .cyan)
                CounterButton(counter: $counter, color: .yellow)
            }
        }
    }
}

struct CounterButton: View {
 
    @Binding var counter: Int
    var color: Color
    
    var body: some View {
        Button {
            counter += 1
        } label: {
            Circle()
                .frame(width: 50, height: 50)
                .foregroundColor(color)
                .overlay(
                    Text(String(counter))
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
        }

    }
}

// MARK: - PreviewProvider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
