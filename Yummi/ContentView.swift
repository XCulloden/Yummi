//
//  ContentView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {

    var currentIngredient = ingredient(name: "Apple ", quantity: 9, expiry: "12,03,2007", type: "froot")
    
    var body: some View {
        VStack {
        
            Text(currentIngredient.displayStats())
            
        }
        .padding()
        Button("random ingredient") {
            
            let foods = ["apple","adi","anchovy","avaocado", "asparagus", "bannana", "baklava","beetroot","bangers abd mash","carrot","contuploupe", "cranberry","dumpling", "dragonfriut", "egg","eggplant","food", "fries","figs","grapefriut"," horse", "hamburger", "helva", ]
            
            currentIngredient[0] = foods[arc4random (in: 1..<foods.count) ]
            
        }
    }
    

}

#Preview {
    ContentView()
}
