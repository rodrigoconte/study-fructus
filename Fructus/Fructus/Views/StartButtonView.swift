//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 14/12/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    
    var body: some View {
        Button() {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }// - HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
            
        }// - Button
        .accentColor(.white)
    }// - Body
}

// MARK: - Preview

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
