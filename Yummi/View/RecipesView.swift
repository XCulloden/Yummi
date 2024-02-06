//
//  RecipesView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        
        let recipesList = [Recipe(name: "Beef stew",ingredients: [Ingredient(name: "beef", quantity: 2, expiry: "12/5/2024", type: "meat"),Ingredient(name: "dumpling", quantity: 4, expiry: "12/5/2024", type: "pastry")], isFavourite: true, rating: 5),Recipe(name: "Bekynton fish and chips",ingredients: [Ingredient(name: "fish?", quantity: 1, expiry: "12/5/3098", type: "inedible")], isFavourite: false, rating: 1)]
        
        List{
            ForEach(recipesList) { recipe in
                HStack{
                    Text(recipe.name)
                    
                }
                
            }
            
        }
    }
}

#Preview {
    RecipesView()
}
