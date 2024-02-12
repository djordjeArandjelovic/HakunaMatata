//
//  HeadingView.swift
//  HakunaMatata
//
//  Created by Djordje Arandjelovic on 11.2.24..
//

import SwiftUI

struct HeadingView: View {
    //MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }//: HSTACK
        .padding(.vertical)
    }
}

//MARK: - PREVIEW
#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
        .previewLayout(.sizeThatFits)
        .padding()
}
