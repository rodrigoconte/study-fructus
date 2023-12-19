//
//  ContentView.swift
//  Fructus
//
//  Created by Rodrigo Conte Oliveira on 11/12/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @State private var isShowingSettings: Bool = false
    var fruitsData: [Fruit] = fruits
    
    // MARK: - Body
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
            .toolbar(content: {
                Button() {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }// - Button
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            })
        }// - Navigation
    }// - Body
}// - ContentView

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
