//
//  ContentView.swift
//  Fructus
//
//  Created by Rodrigo Conte Oliveira on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        FruitCardView(fruit: fruits[2])
    }// - Body
}// - ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}