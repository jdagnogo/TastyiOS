//
//  ListViewModel.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 20/02/2023.
//

import Foundation
import Combine

class ListViewModel : ObservableObject{
    @Published private(set) var state: Result = .idle
    let getRecipesInterator : GetRecipesInterator
    var cancellableSet: Set<AnyCancellable> = []
    
    init(getRecipesInterator: GetRecipesInterator) {
        self.getRecipesInterator = getRecipesInterator
    }
    
    func loadData(){
        print("starting ..")
        self.state = .loading
#warning("handle cancel ? ")
       getRecipesInterator.invoke()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    print("Failed with error \(error)")
                    self.state = .failed
                }
            }, receiveValue: { recipes in
                print("Data retrieved with size \(recipes.count), response = \(recipes)")
                self.state = .success(items: recipes)
            })
            .store(in: &cancellableSet)
    }
}
