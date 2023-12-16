//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 16/12/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties
    var fruitData: Fruit
    let nutrients: [String] = ["Energy, Sugar", "Fat", "Proteins", "Vitamins", "Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrition value per 100g") {
                Text("Hello")
            }
        }// - Box
    }
}

// MARK: - Preview
#Preview {
    FruitNutrientsView(fruitData: fruits[1])
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
