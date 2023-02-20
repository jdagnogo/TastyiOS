//
//  ListItem.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 20/02/2023.
//

import SwiftUI

struct RecipeItem: View {
    let recipe : Recipe
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: recipe.imageUrl)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight : 200)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                 
                } placeholder: {
                    Color.gray.opacity(0.1)
                }
            
            
            
            Text(recipe.name)
            
        }
        
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItem(recipe: fakeData[0])
    }
}
