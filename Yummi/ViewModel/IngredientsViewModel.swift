//
//  IngredientsViewModel.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 29/02/2024.
//

import Foundation

class IngredientsViewModel: ObservableObject {
    
    @Published var ingredientList = [Ingredient(name: "Aple", quantity: 9, expiry: "12,03,2007", type: "froot", unit: "whole"),Ingredient(name: "Cow", quantity: 45, expiry: "03,27,2024", type: "meat",unit: "kilograms"),Ingredient(name: "Chocolate", quantity: 135, expiry: "10,04,2025", type: "sweaty", unit: "grams")]
    @Published var ingredientIndex = 0
    
    @Published var ingredientNameInput = ""
    @Published var ingredientCountInput = 1
    @Published var ingredientDateInput = Date()
    @Published var ingredientTypeInput = ""
    @Published var ingredientUnitInput = ""
    
    func addNewIngredient() {
        let customIngredientName = ingredientNameInput
        let customIngredientCount = ingredientCountInput
        let customIngredientDate = ingredientDateInput
        let customIngredientType = ingredientTypeInput
        let customIngredientUnit = ingredientUnitInput
        
        ingredientList.append(Ingredient(name: customIngredientName, quantity: customIngredientCount, expiry: "\(customIngredientDate)", type: customIngredientType, unit: customIngredientUnit))
        
        ingredientIndex = ingredientList.count - 1
    }
    
    init() {
        ingredientCountInput = 1
    }
    
}
