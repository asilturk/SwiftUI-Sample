//
//  ContentView.swift
//  Button
//
//  Created by Burak Furkan Asilturk on 6.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            /// with HStack
            Button {
                print("Delete button tapped")
            } label: {
                HStack(alignment: .center) {
                    Image(systemName: "trash")
                        .font(.headline)
                        .foregroundColor(.white)
                        
                    Text("Delete")
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.red)
                .clipShape(Capsule())
            }
            
            /// with Label
            Button {
                print("Like button tapped")
            } label: {
                Label(title: {
                    Text("Like")
                        .font(.headline)
                        .foregroundColor(.white)
                }, icon: {
                    Image(systemName: "heart.fill")
                        .font(.headline)
                        .foregroundColor(.white)
                        
                })
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.green, .cyan]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing)
                )
                .clipShape(Capsule())
            }
            
            /// with style
            Button {
                print("Share button tapped")
            } label: {
                HStack {
                    Image(systemName: "square.and.arrow.up")
                        .font(.title)
                    
                    Text("Share")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
        }
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .frame(width: 150, height: 20, alignment: .center)
            .padding()
            .foregroundColor(.white)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [.red, .yellow]),
                    startPoint: .bottomTrailing,
                    endPoint: .topLeading
                )
            )
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

