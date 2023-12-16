//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 16/12/23.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - Properties
    var fruitData: Fruit
    
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruitData.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruitData.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }// - Zstack
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

// MARK: - Preview
#Preview {
    FruitHeaderView(fruitData: fruits[2])
        .previewLayout(.fixed(width: 375, height: 440))
}
