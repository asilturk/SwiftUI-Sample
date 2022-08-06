//
//  CardView.swift
//  Scroll
//
//  Created by Burak Furkan Asilturk on 5.08.2022.
//

import SwiftUI

struct CardView: View {
    
    var imageName: String
    var header: String
    var category: String
    var author: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)

            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(header)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .minimumScaleFactor(0.4)
                    
                    Text("Written by \(author)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .padding([.horizontal])
    }
}

// MARK: - PreviewProvider
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            imageName: "swiftui-button",
            header: "Drawing a border with rounded corners",
            category: "SwiftUI",
            author: "Burak Asilturk"
        )
    }
}
