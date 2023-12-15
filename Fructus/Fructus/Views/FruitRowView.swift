//
//  FruitRowView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 14/12/23.
//

import SwiftUI

struct FruitRowView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        HStack() {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 3, y: 3)
                .background(.linearGradient(Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }// - VStack
        }// - Hstack
    }
}

// MARK: - Preview

#Preview {
    FruitRowView(fruit: fruits[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
