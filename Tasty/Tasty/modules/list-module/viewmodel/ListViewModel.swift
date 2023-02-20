//
//  ListViewModel.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 20/02/2023.
//

import Foundation

class ListViewModel : ObservableObject{
    @Published private(set) var state: Result = .success(items: fakeData)
    
}


enum Result {
    case loading
    case failed(AnyObject)
    case success(items : Array<Recipe>)
}

let fakeData =
[Recipe(id: 1, imageUrl: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/341495.jpg", name: "title1", description: "description1"),
 Recipe(id: 2, imageUrl: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/341495.jpg", name: "title2", description: "description2"),
  Recipe(id: 3, imageUrl: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/341495.jpg", name: "title3", description: "description3"),
]
