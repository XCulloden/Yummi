//
//  IngredientsView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 20/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    
    @State private var ingredientList = [Ingredient(name: "Aple", quantity: 9, expiry: "12,03,2007", type: "froot"),Ingredient(name: "Cow", quantity: 3, expiry: "03,27,2024", type: "meat"),Ingredient(name: "Chocolate", quantity: 5, expiry: "10,04,2025", type: "sweaty")]
    @State private var ingredientIndex = 0
    
    @State private var ingredientNameInput = ""
    @State private var ingredientCountInput = 1
    @State private var ingredientDateInput = Date()
    @State private var ingredientTypeInput = ""
    
    var body: some View {
        Form{
            Text(ingredientList[ingredientIndex].displayStats()).multilineTextAlignment(.center)
            Button {
                if ingredientIndex == ingredientList.count - 1 {
                    ingredientIndex = 0
                } else {
                    ingredientIndex += 1
                }
            } label: {
                Text("next")
            }
            Button {
                if ingredientIndex == 0 {
                    ingredientIndex = ingredientList.count - 1
                } else {
                    ingredientIndex -= 1
                }
            } label: {
                Text("previous")
            }
        }
        Form{
            
            Section(content: {Text("Import item:").fontWeight(.bold)
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
                    
                    ingredientIndex = ingredientList.count - 1
                    
                }, label: {
                    Text("Sumbmit Ingredient")
                })
                
            }
                    
            ), header: { Text("Import item") }
        }
        }
        }
#Preview {
    IngredientsView()
    
    
}

