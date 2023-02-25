//
//  GetRecipesUseCase.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 24/02/2023.
//

import Foundation
import Combine

protocol GetRecipesInterator{
    func invoke() -> AnyPublisher<[Recipe], Error>
}

struct GetRecipesInteratorImpl : GetRecipesInterator{
    let apiService : ApiService
    
    init(apiService : ApiService){
        self.apiService = apiService
    }
    
    func invoke() -> AnyPublisher<[Recipe], Error> {
        return apiService
            .getRecipes()
            .tryMap { element -> [Recipe] in
                element.results
            }
            .eraseToAnyPublisher()
    }
}
