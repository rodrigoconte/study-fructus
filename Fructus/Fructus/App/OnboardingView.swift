//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 14/12/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    
    var fruitsData = fruits
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruitsData) { fruit in
                FruitCardView(fruit: fruit)
            }// - Loop
        }// - Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - Preview

#Preview {
    OnboardingView()
}
