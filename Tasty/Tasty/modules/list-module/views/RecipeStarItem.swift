//
//  RecipeStarItem.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 23/02/2023.
//

import SwiftUI

struct RecipeStarItem: View {
    let recipe : Recipe
    var body: some View {
        ZStack{
            Text(recipe.name).foregroundColor(.red)
                .font(.largeTitle)
                .cornerRadius(10.0)
                .padding()
            AsyncImage(url: URL(string: "")) { image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight : 400)
                
            }
        placeholder: {
            Color.gray.opacity(0.1)
        }
            Text(recipe.name).foregroundColor(.white)
                .font(.largeTitle)
                .cornerRadius(10.0)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .padding(.leading)
        }
        
    }
}

struct RecipeStarItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeStarItem(  recipe: fakeData[0])
    }
}
