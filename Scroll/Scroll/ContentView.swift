//
//  ContentView.swift
//  Scroll
//
//  Created by Burak Furkan Asilturk on 5.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                Text("Reading")
                    .font(.headline)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .padding([.horizontal])
                    .background(.green.opacity(0.2))
                    .cornerRadius(5)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Group {
                            CardView(
                                imageName: "swiftui-button",
                                header: "Drawing a border with rounded corners",
                                category: "SwiftUI",
                                author: "Burak Asilturk"
                            )
                            
                            CardView(
                                imageName: "macos-programming",
                                header: "Drawing a border with rounded corners",
                                category: "SwiftUI",
                                author: "Burak Asilturk"
                            )
                            
                            CardView(
                                imageName: "natural-language-api",
                                header: "Drawing a border with rounded corners",
                                category: "SwiftUI",
                                author: "Burak Asilturk"
                            )
                            
                        }
                        .frame(width: 200)
                    }
                }
                
                Text("Quick Look")
                    .font(.headline)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .padding([.horizontal])
                    .background(.orange.opacity(0.2))
                    .cornerRadius(5)
                
                VStack {
                    CardView(
                        imageName: "flutter-app",
                        header: "Drawing a border with rounded corners",
                        category: "SwiftUI",
                        author: "Burak Asilturk"
                    )
                    
                    CardView(
                        imageName: "natural-language-api",
                        header: "Drawing a border with rounded corners",
                        category: "SwiftUI",
                        author: "Burak Asilturk"
                    )
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
