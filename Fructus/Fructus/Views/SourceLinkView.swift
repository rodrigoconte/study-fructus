//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 16/12/23.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Properties
    var fruitData: Fruit
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikpedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

#Preview {
    SourceLinkView(fruitData: fruits[2])
        .previewLayout(.sizeThatFits)
        .padding()
}
