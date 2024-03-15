//
//  ContentView.swift
//  Yummi
//
//  Created by Culloden, Xan (EJNR) on 23/01/2024.
//

import SwiftUI

struct ContentView: View{
    @State private var isShowingView1: Bool = false
    
    var body: some View{
        TabView{
            
                RecipesView()
                .tabItem {
                    Label("Recipes", systemImage: "list.dash")
                }
                IngredientsView()
            
            .tabItem {
                Label ("ingredients", systemImage: "leaf.fill")
            }
            
        }
    }
}
#Preview {
    ContentView()
}
