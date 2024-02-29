//
//  IngredientsView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 20/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    
    @StateObject var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    
    var body: some View {
        Text(ingredientsViewModel.ingredientList[ingredientsViewModel.ingredientIndex].displayStats()).multilineTextAlignment(.center)
            Button {
                if ingredientsViewModel.ingredientIndex == ingredientsViewModel.ingredientList.count - 1 {
                    ingredientsViewModel.ingredientIndex = 0
                } else {
                    ingredientsViewModel.ingredientIndex += 1
                }
            } label: {
                Text("next")
            }
            Button {
                if ingredientsViewModel.ingredientIndex == 0 {
                    ingredientsViewModel.ingredientIndex = ingredientsViewModel.ingredientList.count - 1
                } else {
                    ingredientsViewModel.ingredientIndex -= 1
                }
            } label: {
                Text("previous")
            }
        
        Form{
            
            Section(content: {Text("Import item:").fontWeight(.bold)
                TextField(
                    "add ingredient",
                    text: $ingredientsViewModel.ingredientNameInput
                )
                Picker("type: ", selection: $ingredientsViewModel.ingredientTypeInput) {
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
                    selection: $ingredientsViewModel.ingredientDateInput,
                    displayedComponents: [.date]
                )
                Stepper(
                    "count: \(ingredientsViewModel.ingredientCountInput)",
                    value: $ingredientsViewModel.ingredientCountInput,
                    in: 1...100,
                    step: 1
                )
                Picker("unit: ", selection: $ingredientsViewModel.ingredientTypeInput) {
                    Text("whole")
                    Text("gram")
                    Text("kilogram")
                    Text("millilitre")
                    Text("litre")
                    Text("litre")
                    Text("mol")
                }
                
                Button(action: {
                    
                    ingredientsViewModel.addNewIngredient()
                    
                }, label: {
                    Text("Sumbmit Ingredient")
                })
                
            }
                    
            )/*, header: { Text("Import item") }*/
        }
        }
        }
#Preview {
    IngredientsView()
    
    
}

