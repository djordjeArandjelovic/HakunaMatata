//
//  AnimalListItemView.swift
//  HakunaMatata
//
//  Created by Djordje Arandjelovic on 11.2.24..
//

import SwiftUI

struct AnimalListItemView: View {
    //MARK: - PROPERTIES
    
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: VSTACK
        }//: HSTACK
    }
}

//MARK: - PREIVEW

extension Animal {
    static var sampleAnimal: Animal {
        return Animal(id: "1", name: "Lion", headline: "The world's most social felines, lions roam the savannas and grasslands of the African continent, hunting cooperatively and raising cubs in prides. ", description: "The lion (Panthera leo) is a species in the family Felidae and a member of the genus Panthera. It is most recognisable for its muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions have a prominent mane. With a typical head-to-body length of 184–208 cm (72–82 in) they are larger than females at 160–184 cm (63–72 in). It is a social species, forming groups called prides. A lion pride consists of a few adult males, related females and cubs. Groups of female lions usually hunt together, preying mostly on large ungulates. The lion is an apex and keystone predator; although some lions scavenge when opportunities occur and have been known to hunt humans, the species typically does not.\n\nTypically, the lion inhabits grasslands and savannas, but is absent in dense forests. It is usually more diurnal than other big cats, but when persecuted it adapts to being active at night and at twilight. In the Pleistocene, the lion ranged throughout Eurasia, Africa and North America, but today it has been reduced to fragmented populations in sub-Saharan Africa and one critically endangered population in western India. It has been listed as Vulnerable on the IUCN Red List since 1996 because populations in African countries have declined by about 43% since the early 1990s. Lion populations are untenable outside designated protected areas. Although the cause of the decline is not fully understood, habitat loss and conflicts with humans are the greatest causes for concern.\n\nOne of the most widely recognised animal symbols in human culture, the lion has been extensively depicted in sculptures and paintings, on national flags, and in contemporary films and literature. Lions have been kept in menageries since the time of the Roman Empire and have been a key species sought for exhibition in zoological gardens across the world since the late 18th century. Cultural depictions of lions were prominent in the Upper Paleolithic period; carvings and paintings from the Lascaux and Chauvet Caves in France have been dated to 17,000 years ago, and depictions have occurred in virtually all ancient and medieval cultures that coincided with the lion's former and current ranges.", link: "https://en.wikipedia.org/wiki/Lion", image: "lion", gallery: [
            "lion-1",
            "lion-2",
            "lion-3",
            "lion-4"
          ], fact: [
            "Female lions raise the cubs and are also the primary hunters.",
            "Lions are the only cats that live in groups. A pride, can be up to 30 lions, depending on how much food and water is available.",
            "Without their coats, lion and tiger bodies are so similar that only experts can tell them apart."
          ])
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItemView(animal: Animal.sampleAnimal)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//#Preview {
//    AnimalListItemView(animal: sampleAnimal)
//        .previewLayout(.sizeThatFits)
//        .padding()
//}
