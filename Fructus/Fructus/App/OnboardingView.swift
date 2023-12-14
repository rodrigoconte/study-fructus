//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 14/12/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits) { fruit in
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
