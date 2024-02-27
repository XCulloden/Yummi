//
//  ingredient.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 23/01/2024.
//

import Foundation

struct Ingredient: Identifiable {
    let name: String
    var quantity: Int
    let expiry: String
    let type: String
    
    var id: String {
        name
    }
    
    func displayStats() -> String {
        
        return """
        \(name)

quantity: \(quantity)
expiry: \(expiry)
type: \(type)


"""
        
        
    }
}

