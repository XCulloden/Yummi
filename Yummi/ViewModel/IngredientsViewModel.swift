//
//  IngredientsViewModel.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 29/02/2024.
//

import Foundation

class IngredientsViewModel: ObservableObject {
    
    @Published var ingredientList = [Ingredient(name: "Aple", quantity: 9, expiry: "12,03,2007", type: "froot"),Ingredient(name: "Cow", quantity: 3, expiry: "03,27,2024", type: "meat"),Ingredient(name: "Chocolate", quantity: 5, expiry: "10,04,2025", type: "sweaty")]
    @Published var ingredientIndex = 0
    
    @Published var ingredientNameInput = ""
    @Published var ingredientCountInput = 1
    @Published var ingredientDateInput = Date()
    @Published var ingredientTypeInput = ""
    
    func addNewIngredient() {
        let customIngredientName = ingredientNameInput
        let customIngredientCount = ingredientCountInput
        let customIngredientDate = ingredientDateInput
        let customIngredientType = ingredientTypeInput
        
        ingredientList.append(Ingredient(name: customIngredientName, quantity: customIngredientCount, expiry: "\(customIngredientDate)", type: customIngredientType))
        
        ingredientIndex = ingredientList.count - 1
    }
    
    init() {
        ingredientCountInput = 1
    }
    
}
