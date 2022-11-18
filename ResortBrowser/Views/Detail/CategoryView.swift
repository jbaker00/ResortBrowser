//
//  CategoryView.swift
//  ResortBrowser
//
//  Created by James Baker on 9/4/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    //Computed property
    var recipes: [Recipe] {
        return Recipe.all.filter{$0.category == category.rawValue }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: recipes)
        }
        .navigationBarTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.beach)
    }
}
