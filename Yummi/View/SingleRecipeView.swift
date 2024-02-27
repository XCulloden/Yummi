//
//  SingleRecipeView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 22/02/2024.
//

import SwiftUI

struct SingleRecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        
        VStack{
            
            Image(recipe.imagePreview ?? "emptyBowl")
                .resizable()
                .clipped()
                .scaledToFit()
            Text(recipe.name).bold().font(.system(size: 36))
            Text("\n").font(.system(size: 5))
            Text("Rating: \(recipe.rating)")
            Text("Serves: \(recipe.serves)")
        }
        Form{
            ForEach(recipe.ingredients) { ingredient in
                HStack{
                    Text(ingredient.name)
                    Spacer()
                    Text("\(ingredient.quantity)")
                }
            }
        }
    }
}
    
#Preview {
    SingleRecipeView(recipe: Recipe.dummyRecipe)
}
