//
//  ContentView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    let foods = ["apple","adi","anchovy","avaocado", "asparagus", "bannana", "baklava","beetroot","bangers abd mash","carrot","crayon","contuploupe", "cranberry","dumpling", "dragonfriut", "egg","eggplant","food", "fries","figs","grapefriut"," horse", "hamburger", "helva", "horseradish","iridescent powder","red 40", "gelatin","soy gop", "tren","acetate","ligament", "ABS","fungus","asbestos"]
                @State private var currentIngredient = ingredient(name: "aple", quantity: 9, expiry: "12,03,2007", type: "froot")
    
    var body: some View {
        VStack {

            Text(currentIngredient.displayStats())
            Button {
                let randomFood = foods[Int.random(in: 1..<foods.count)]
                let randomQuantity = Int.random(in: -2..<99)
                let randomDate = String(" \(Int.random(in:1..<31)),\(Int.random(in:1...12)),\(Int.random(in:1993..<2026))")
                currentIngredient = ingredient(name: randomFood, quantity: randomQuantity, expiry: randomDate, type: "froot")

                print(randomFood)
                print(currentIngredient.displayStats())
            } label: {
                Text("botton")
            }

        }
        .padding()
//        Button("random ingredient") {
//            let randomFood = foods[Int.random(in: 1..<foods.count)]
//            var currentIngredient = ingredient(name: randomFood, quantity: 9, expiry: "12,03,2007", type: "froot")
        //}
        
    
    }
    

}

#Preview {
    ContentView()
}
