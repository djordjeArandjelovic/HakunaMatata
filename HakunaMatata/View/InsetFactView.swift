//
//  InsetFactView.swift
//  HakunaMatata
//
//  Created by Djordje Arandjelovic on 12.2.24..
//

import SwiftUI

struct InsetFactView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { fact in
                    Text(fact)
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: GROUPBOX
    }
}





//MARK: - PREVIEW
struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        InsetFactView(animal: Animal.sampleAnimal)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}


//#Preview {
//    InsetFactView()
//}
