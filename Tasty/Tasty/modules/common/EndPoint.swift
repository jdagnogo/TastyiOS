//
//  EndPoint.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 24/02/2023.
//

import Foundation

enum EndPoint {
    static let baseURL = URL(string: API_BASE_URL)!
        
    case list
    
    var url : URL {
        switch self {
        case .list :
            return EndPoint.baseURL.appendingPathComponent("/recipes/list?from=0&size=20&tags=under_30_minutes")
        }
//    case .category(let category):
//                  var baseQueryURL = URLComponents(url: EndPoint.baseURL.appendingPathComponent("random"), resolvingAgainstBaseURL: false)!
//                  baseQueryURL.queryItems = [
//                      URLQueryItem(name: "category", value: category)
//                  ]
//                  return baseQueryURL.url!
    }

}
