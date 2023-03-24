//
//  RecipeList.swift
//  ResortBrowser
//
//  Created by James Baker on 9/4/22.
//

import SwiftUI

struct RecipeList: View {
    
    //var model: [ViewModel]
    @ObservedObject var model = ViewModel()
        
    var body: some View {
        VStack {
            HStack {
                Text("\(model.list.count) \(model.list.count > 1 ? "hotels" : "hotel")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(model.list) { item in
                    NavigationLink(destination: RecipeView(resort: item)) {
                    RecipeCard(resort: item)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
        
    }
    
    init() {
        model.getData()
    }
}

//struct RecipeList_Previews: PreviewProvider {
//    static var previews: some View {
//        ScrollView {
//        RecipeList(recipes: Recipe.all)
//        }
//    }
//}
