//
//  AnimalDetailView.swift
//  HakunaMatata
//
//  Created by Djordje Arandjelovic on 11.2.24..
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 22)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                // DESCRIPTION
                
                // MAP
                
                // LINK
                
            }//: VSTACK
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }//: SCROLL
    }
}

//MARK: - PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: Animal.sampleAnimal)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}


//#Preview {
//    AnimalDetailView()
//}
