//
//  HeadingView.swift
//  Africa
//
//  Created by Soro on 2022-10-02.
//

import SwiftUI

struct HeadingView: View {
    
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
