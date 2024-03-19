//
//  IngredientsView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 20/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    
    @StateObject var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    @State private var addingIngredient = false
    @State private var unitSelection = ""
    
    var body: some View {
        Form{
            Section{
                ForEach(ingredientsViewModel.ingredientList) { ingredient in
                    HStack{
                        Text(ingredient.name).bold().shadow(color: .blue, radius: 15)
                        Spacer()
                        Text(ingredient.type).foregroundStyle(.gray)
                        Spacer()
                        Text("\(ingredient.quantity)")
                        Text(ingredient.unit)
                        
                    }
                }
            }
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
            
            Button {
                addingIngredient.toggle()
            } label: {
                Text("add ingredient")
            }
            .sheet(isPresented: $addingIngredient) {
                Form {
                    Section(content: {Text("Import item:").fontWeight(.bold)
                        TextField(
                            "add ingredient",
                            text: $ingredientsViewModel.ingredientNameInput
                        )
                        Picker("type: ", selection: $ingredientsViewModel.ingredientTypeInput) {
                            Text("froot").tag("froot")
                            Text("vegeable").tag("vegetable")
                            Text("meat").tag("meat")
                            Text("spice").tag("spice")
                            Text("source").tag("source")
                            Text("sweaty").tag("sweaty")
                            Text("inedible").tag("inedible")
                            Text("illegal").tag("illegal")
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
                        Picker("unit: ", selection: $ingredientsViewModel.ingredientUnitInput) {
                            Text("whole").tag("whole")
                            Text("gram").tag("gram")
                            Text("kilogram").tag("kilogram")
                            Text("millilitre").tag("millilitre")
                            Text("litre").tag("litre")
                            Text("mol").tag("mol")
                        }
                        
                        Button(action: {
                            
                            ingredientsViewModel.addNewIngredient()
                            addingIngredient.toggle()
                            
                        }, label: {
                            Text("Sumbmit Ingredient")
                            
                        })
                        
                    }
                            
                    )/*, header: { Text("Import item") }*/
                    
                }
            }
        }
    }
}

#Preview {
    IngredientsView()
    
    
}

