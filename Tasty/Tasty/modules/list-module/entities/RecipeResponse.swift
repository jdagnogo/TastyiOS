//
//  RecipeResponse.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 25/02/2023.
//

import Foundation

struct RecipeResponse: Decodable {
    let count: Int
    let results: [Recipe]
}
