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
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Proteins", "Vitamins", "Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrition value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruitData.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruitData.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
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
