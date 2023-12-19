//
//  SettingsView.swift
//  Fructus
//
//  Created by Rodrigo Conte on 18/12/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.dismiss) var dismiss
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(
                        label:
                            SettingsLabelView(label: "Fructus", imageName: "info.circle"),
                        content: {
                            Divider()
                                .padding(.vertical, 4)
                            HStack(alignment: .center, spacing: 10){
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .clipShape(.rect(cornerRadius: 9))
                                Text("Most fruits are naturally low in fat, sodium and calories. None have colesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                    .font(.footnote)
                            }
                        }
                    )// - Group
                    // MARK: - Section 2
                    // MARK: - Section 3
                    GroupBox(
                        label:
                            SettingsLabelView(label: "Application", imageName: "apps.iphone"),
                        content: {
                            SettingsRowView(rowTitle: "Developer", rowInfo: "Rodrigo")
                            SettingsRowView(rowTitle: "SwiftUI Version", rowInfo: "5.0")
                            SettingsRowView(rowTitle: "Linkedin", rowInfo: "Profile", rowUrl: "https://www.linkedin.com/in/rodrigo-conte-oliv/")
                            SettingsRowView(rowTitle: "App version", rowInfo: "1.0")
                            SettingsRowView(rowTitle: "Course by", rowInfo: "Credo academy")
                        }
                    )// - Group
                }// - Vstack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    Button() {
                        print("action")
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
                .padding()
            } // - Scroll
        } // - Navigation
    }
}

// MARK: Preview
#Preview {
    SettingsView()
}
