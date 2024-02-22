//
//  RecipesView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        
        let recipesList = [Recipe(name: "Beef stew",ingredients: [Ingredient(name: "beef", quantity: 2, expiry: "12/5/2024", type: "meat"),Ingredient(name: "dumpling", quantity: 4, expiry: "12/5/2024", type: "pastry")], isFavourite: true, rating: 5, serves: 4),Recipe(name: "Bekynton fish and chips",ingredients: [Ingredient(name: "fish?", quantity: 1, expiry: "12/5/3098", type: "inedible")], isFavourite: false, rating: 1,serves: 1000),Recipe(name: "Sweet and sour mystery meat balls",ingredients: [Ingredient(name: "tumours", quantity: 2, expiry: "12/5/2024", type: "meat"),Ingredient(name: "sinew", quantity: 4, expiry: "12/5/2024", type: "meat")], isFavourite: false, rating: 3,serves: 1000),Recipe(name: "Lean",ingredients: [Ingredient(name: "Jolly Ranchers", quantity: 6, expiry: "12/5/2025", type: "Sweaty"),Ingredient(name: "Cough Syrup", quantity: 1, expiry: "12/5/2025", type: "liquid")], isFavourite: true, rating: 5,serves: 1)]
        NavigationView{
            List{
                ForEach(recipesList) { recipe in
                    NavigationLink {
                        SingleRecipeView(recipe)
                    } label: {
                        Text(recipe.name)
                    }
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    RecipesView()
}
