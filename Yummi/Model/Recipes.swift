//
//  Recipes.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 02/02/2024.
//

import Foundation

struct Recipe: Identifiable {
    let name: String
    var ingredients: [Ingredient] = []
    let isFavourite: Bool
    let rating: Int
    let serves: Int
    var imagePreview: String?
    
    var id: String {
        name
    }
    
    static var dummyRecipe: Recipe {
        Recipe(name: "adi soup",ingredients: [Ingredient(name: "Adi", quantity: 1, expiry: "12,8,2096", type: "meat"),Ingredient(name: "Rocky mountain oysters", quantity: 4, expiry: "12,5,2053", type: "Meat"),Ingredient(name: "leek", quantity: 5, expiry: "4,6,2024", type: "vegebale")], isFavourite: true, rating: 5, serves: 3/*, imagePreview: "adiSoup"*/)
    }
    
    
    static let examples = [Recipe(name: "Beef stew",ingredients: [Ingredient(name: "beef", quantity: 2, expiry: "12/5/2024", type: "meat"),Ingredient(name: "dumpling", quantity: 4, expiry: "12/5/2024", type: "pastry")], isFavourite: true, rating: 5, serves: 4, imagePreview: "beefStew"),Recipe(name: "Bekynton fish and chips",ingredients: [Ingredient(name: "fish?", quantity: 1, expiry: "12/5/3098", type: "inedible")], isFavourite: false, rating: 1,serves: 1000, imagePreview: "fishAndChips"),Recipe(name: "Sweet and sour mystery meat balls",ingredients: [Ingredient(name: "tumours", quantity: 2, expiry: "12/5/2024", type: "meat"),Ingredient(name: "sinew", quantity: 4, expiry: "12/5/2024", type: "meat")], isFavourite: false, rating: 3,serves: 1000,imagePreview: "sweetAndSour"),Recipe(name: "Lean",ingredients: [Ingredient(name: "Jolly Ranchers", quantity: 6, expiry: "12/5/2025", type: "Sweaty"),Ingredient(name: "Cough Syrup", quantity: 1, expiry: "12/5/2025", type: "liquid")], isFavourite: true, rating: 5,serves: 1, imagePreview: "lean")]
    
//    func displayStats() -> String {
//        
//        return """
//            \(name)
//
//quantity: \(quantity)
//expiry: \(expiry)
//type: \(type)
//
//
//"""
        
        
    //}
}
