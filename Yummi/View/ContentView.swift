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
        VStack{
            Toggle("Show recipes", isOn: $isShowingView1)
                .padding(.horizontal,100)
            Spacer()
            
            if isShowingView1 {
                RecipesView()
            } else {
                IngredientsView()
            }
            Spacer()
            Spacer()
            
            
        }
    }
}

#Preview {
    ContentView()
}
