//
//  ContentView.swift
//  Button
//
//  Created by Burak Furkan Asilturk on 6.08.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var color: Color = .cyan

    var body: some View {
        
        VStack {
            /// with HStack
            Button {
                print("Delete")
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
                print("Delete")
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
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

