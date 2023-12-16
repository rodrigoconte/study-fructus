//
//  ContentView.swift
//  Fructus
//
//  Created by Rodrigo Conte Oliveira on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var fruitsData: [Fruit] = fruits
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(fruitsData.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailsView(fruitData: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }// - List
            .listStyle(.plain)
            .navigationTitle("Fruits")
        }// - Navigation
    }// - Body
}// - ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
