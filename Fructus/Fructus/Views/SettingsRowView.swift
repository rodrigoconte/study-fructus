//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 19/12/23.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - Properties
    
    var rowTitle: String
    var rowInfo: String
    var rowUrl: String?
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider()
                .padding(.bottom, 4)
            HStack {
                Text(rowTitle)
                    .foregroundStyle(.gray)
                Spacer()
                
                if let linkString = rowUrl,
                   let urlLink = URL(string: linkString) {
                    HStack {
                        Link(rowInfo, destination: urlLink)
                        Image(systemName: "arrow.up.right.square")
                            .foregroundStyle(.pink)
                    }
                } else {
                    Text(rowInfo)
                }
            }
            
        }
    }
}

// MARK: - Preview

#Preview {
    SettingsRowView(rowTitle: "Teste", rowInfo: "Outro teste", rowUrl: "https://google.com")
        .previewLayout(.sizeThatFits)
        .padding()
}
