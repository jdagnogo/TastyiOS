//
//  TastyApi.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 24/02/2023.
//

import Foundation
import Combine

protocol ApiService {
    func getRecipes() -> AnyPublisher<RecipeResponse, Error>
}

// MARK: - Implemetation

class TastyApiService : ApiService{
#warning("change url")
    let urlSession : URLSession
    
    init(urlSession: URLSession) {
        self.urlSession = urlSession
    }
    func getRecipes() -> AnyPublisher<RecipeResponse, Error> {
        let headers = [
            "X-RapidAPI-Key": "b4511ed889mshf70f24eb24d1bb6p18a6b1jsn6aa076fa2bda",
            "X-RapidAPI-Host": "tasty.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://tasty.p.rapidapi.com/recipes/list?from=0&size=20&tags=under_30_minutes")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        return urlSession
            .dataTaskPublisher(for: request as URLRequest)
            .tryMap{ element -> Data in
                print("data : \(element.response)")
                      guard let httpResponse = element.response as? HTTPURLResponse,
                          httpResponse.statusCode == 200 else {
                              throw URLError(.badServerResponse)
                      }
                      return element.data
              }
            .decode(type: RecipeResponse.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        
    }
}

let fakeData =
[Recipe(id: 1,  name: "title1", description: "description1"),
 Recipe(id: 2,  name: "title2", description: "description2"),
 Recipe(id: 3,  name: "title3", description: "description3"),
]
