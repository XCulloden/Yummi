//
//  ContentView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State var foods = ["apple","adi","anchovy","avaocado", "asparagus", "bannana", "baklava","beetroot","bangers abd mash","carrot","crayon","contuploupe", "cranberry","dumpling", "dragonfriut", "egg","eggplant","food", "fries","figs","grapefriut"," horse", "hamburger", "helva", "horseradish","iridescent powder","red 40", "gelatin","goy slop", "tren","acetate","ligament", "ABS","fungus","asbestos"]
                @State private var currentIngredient = ingredient(name: "aple", quantity: 9, expiry: "12,03,2007", type: "froot")
                @State private var ingredientNameInput = ""
                @State private var ingredientCountInput = Int()
                @State private var ingredientDateInput = Date()
                @State private var ingredientTypeInput = ""
    var body: some View {
        VStack {
            Spacer()
            Text(currentIngredient.displayStats())
            Button {
                let randomFood = foods[Int.random(in: 1..<foods.count)]
                let randomQuantity = Int.random(in: -2..<99)
                let randomDate = String(" \(Int.random(in:1..<31)),\(Int.random(in:1...12)),\(Int.random(in:1993..<2026))")
                currentIngredient = ingredient(name: randomFood, quantity: randomQuantity, expiry: randomDate, type: "froot")
                
                print(randomFood)
                print(currentIngredient.displayStats())
            } label: {
                Text("radon botton")
            }

            Form{
                TextField(
                    "add ingredient",
                    text: $ingredientNameInput
                )
                Picker("type: ", selection: $ingredientTypeInput) {
                    Text("froot")
                    Text("vegeable")
                    Text("meat")
                    Text("spice")
                    Text("source")
                    Text("sweaty")
                    Text("inedible")
                    Text("illegal")
                }
                
                DatePicker(
                    "Start Date",
                    selection: $ingredientDateInput,
                    displayedComponents: [.date]
                )
                Stepper(
                    "count: \(ingredientCountInput)",
                    value: $ingredientCountInput,
                    in: 1...100,
                    step: 1
                )
                Picker("unit: ", selection: $ingredientTypeInput) {
                    Text("litre")
                    Text("gram")
                    Text("kilogram")
                    Text("millilitre")
                    Text("litre")
                    Text("whole")
                    Text("mol")
                }
                
                Button(action: {
                    
                    let customIngredientName = ingredientNameInput
                    let customIngredientCount = ingredientCountInput
                    let customIngredientDate = ingredientDateInput
                    let customIngredientType = ingredientTypeInput
                    
                    foods.append(customIngredientName)
                    
                    currentIngredient = ingredient(name: customIngredientName, quantity: customIngredientCount, expiry: "\(customIngredientDate)", type: customIngredientType)
                    print(currentIngredient)
                    
                }, label: {
                    Text("Sumbmit Ingredient")
                })
            }
            
        }
    }
    //        Button("random ingredient") {
    //            let randomFood = foods[Int.random(in: 1..<foods.count)]
    //            var currentIngredient = ingredient(name: randomFood, quantity: 9, expiry: "12,03,2007", type: "froot")
            //}
            
        
        }
    



#Preview {
    ContentView()
}
