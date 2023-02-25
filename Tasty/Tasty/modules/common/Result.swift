//
//  Result.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 24/02/2023.
//

import Foundation

enum Result {
    case idle
    case loading
    case failed
    case success(items : Array<Recipe>)
}
