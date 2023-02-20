//
//  RecipeRow.swift
//  Tasty
//
//  Created by Jean francois dagnogo on 20/02/2023.
//

import SwiftUI

struct RecipeRow: View {
    let recipes : Array<Recipe>
    var body: some View {
        VStack(alignment: .leading) {
            Text("TITLE")
                        .font(.headline)
                        .padding(.leading, 15)
                        .padding(.top, 5)

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
        RecipeRow(recipes: fakeData)
    }
}
