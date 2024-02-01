//
//  ContentView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var ingredientList = [Ingredient(name: "aple", quantity: 9, expiry: "12,03,2007", type: "froot")]
    @State private var ingredientIndex = 0

    @State private var ingredientNameInput = ""
    @State private var ingredientCountInput = Int()
    @State private var ingredientDateInput = Date()
    @State private var ingredientTypeInput = ""
    
    var body: some View {
        VStack {
            Spacer()
            Text(ingredientList[ingredientIndex].displayStats())
            Button {
                if ingredientIndex + 1 > ingredientList.count {
                    ingredientIndex = 0
                } else {
                    ingredientIndex += 1
                }
            } label: {
                Text("next")
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
                    
                    ingredientList.append(Ingredient(name: customIngredientName, quantity: customIngredientCount, expiry: "\(customIngredientDate)", type: customIngredientType))
                    
                }, label: {
                    Text("Sumbmit Ingredient")
                })
            }
            
        }
    }
            
        
        }
    



#Preview {
    ContentView()
}
