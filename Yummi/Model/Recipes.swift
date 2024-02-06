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
    
    var id: String {
        name
    }
    
    
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
