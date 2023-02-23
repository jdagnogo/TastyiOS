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
                    .scaledToFill()
                    .frame(maxWidth: 150,maxHeight : 150)
                    .clipShape(Rectangle())
            
                 
                } placeholder: {
                    Color.gray.opacity(0.1)
                }.padding(.trailing)
            
            
            
            Text(recipe.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
        }
        
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeItem(recipe: fakeData[0])
    }
}
