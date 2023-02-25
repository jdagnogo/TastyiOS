//
//  Recipe.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 17/02/2023.
//

import Foundation

struct Recipe :Identifiable, Decodable{
    internal var id: Int
    //internal var thumbnailUrl: String
    internal var name: String
    internal var description: String
    internal var thumbnail_url: String = ""
}
