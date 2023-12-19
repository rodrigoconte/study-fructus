//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 19/12/23.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - Properties
    
    var label: String
    var imageName: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(label.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: imageName)
        }// - HStack
    }// - Body
}// - View

// MARK: -  Preview

#Preview {
    SettingsLabelView(label: "Algo", imageName: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
