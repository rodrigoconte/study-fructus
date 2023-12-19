//
//  FruitDetailsView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 15/12/23.
//

import SwiftUI

struct FruitDetailsView: View {
    
    // MARK: - Properties
    var fruitData: Fruit
    
    // MARK: - Body
    var body: some View {
        NavigationStack() {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    // MARK: - Header
                    FruitHeaderView(fruitData: fruitData)
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // MARK: - Title
                        Text(fruitData.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruitData.gradientColors[1])
                        // MARK: - Headline
                        Text(fruitData.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // MARK: - Nutrients
                        FruitNutrientsView(fruitData: fruitData)
                        // MARK: - Subhaedline
                        Text("Learn more about \(fruitData.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruitData.gradientColors[1])
                        // MARK: - Description
                        Text(fruitData.description)
                            .multilineTextAlignment(.leading)
                        // MARK: - Link
                        SourceLinkView(fruitData: fruitData)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }// - VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }// - VStack
                .navigationTitle(fruitData.title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(.hidden)
            }// - Scroll
            .ignoresSafeArea(edges: .top)
            
        }// - Navigation
    }
}

// MARK: - Preview

#Preview {
    FruitDetailsView(fruitData: fruits[5])
}
