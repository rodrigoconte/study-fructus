//
//  FruitModel.swift
//  Fructus
//
//  Created by Rodrigo Conte on 13/12/23.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
    
}
