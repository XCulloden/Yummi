//
//  ContentView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {

    let ingredient = ingredient(name: "Apple", quantity: 9, expiry: "12,03,2007", type: "froot")
    
    var body: some View {
        VStack {
        
            Text(ingredient.displayStats())
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
