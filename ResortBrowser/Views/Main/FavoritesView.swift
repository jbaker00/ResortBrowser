//
//  FavoritesView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved any hotels to your favorites yet")
                .padding()
                .navigationTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
