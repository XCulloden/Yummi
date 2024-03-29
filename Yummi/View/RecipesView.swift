//
//  RecipesView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 02/02/2024.
//

import SwiftUI

struct RecipesView: View {
    var body: some View {
        
        
        NavigationStack{
            List{
                ForEach(Recipe.examples) { recipe in
                    NavigationLink {
                        SingleRecipeView(recipe: recipe)
                    } label: {
                        Label(recipe.name, systemImage: "0\(recipe.rating).square.fill")
                    }
                    
                    
                }
                
            }
        }
    }
}

#Preview {
    RecipesView()
}
