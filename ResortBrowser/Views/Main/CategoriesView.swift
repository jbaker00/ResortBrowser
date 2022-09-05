//
//  CategoriesView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        //CategoryView(category: category)
                        CategoryView(category: category)
                    } label : {
                        Text(category.rawValue + "s")

                    }
                }
            }
            .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)
    }
}



struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
