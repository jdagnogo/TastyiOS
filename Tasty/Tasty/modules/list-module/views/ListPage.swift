//
//  ListUIView.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 17/02/2023.
//

import SwiftUI

struct ListPage: View {
    @ObservedObject var viewModel: ListViewModel
    
    var body: some View {
        let state = viewModel.state
        switch state {
        case .success(let recipes):
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    RecipeStarItem(recipe: recipes[0])
                    
                    RecipeRow(rowTitle: "Trending",recipes: recipes)
                    
                    RecipeRow(rowTitle: "Popular Recipes this week",recipes: recipes)
                    
                    RecipeRow(rowTitle: "",recipes: recipes)
                    
                    RecipeRow(rowTitle: "",recipes: recipes)
                }
            }
        
        default:
            Text("Loading")
        }
           
    }
}

struct ListPage_Previews: PreviewProvider {
    static var previews: some View {
        ListPage(viewModel: ListViewModel())
    }
}


