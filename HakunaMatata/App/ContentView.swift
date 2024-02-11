//
//  ContentView.swift
//  HakunaMatata
//
//  Created by Djordje Arandjelovic on 10.2.24..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }//: LIST
            .navigationTitle("Africa")
        }//: NAVIGATION
    }
}

#Preview {
    ContentView()
}
