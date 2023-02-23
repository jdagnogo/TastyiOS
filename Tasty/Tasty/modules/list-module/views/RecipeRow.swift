//
//  RecipeRow.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 20/02/2023.
//

import SwiftUI

struct RecipeRow: View {
    let rowTitle : String
    let recipes : Array<Recipe>
    var body: some View {
        VStack(alignment: .leading) {
            Text(rowTitle)
                        .font(.headline)
                        .foregroundColor(.pink)
                        .bold()
                        .padding(.leading, 16)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(recipes) { recipe in
                                RecipeItem(recipe: recipe)
                            }
                        }
                    }
                    .frame(height: 185)
                }
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(rowTitle: "Trending", recipes: fakeData)
    }
}
