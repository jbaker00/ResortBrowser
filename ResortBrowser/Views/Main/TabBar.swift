//
//  TabBar.swift
//  ResortBrowser
//
//  Created by James Baker on 9/3/22.
// 

import SwiftUI
 
struct TabBar: View {
    var body: some View { 
        TabView {
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house") 
                }
            CategoriesView()
                .tabItem{
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            AboutUsView()
                .tabItem{
                   Label("About Us", systemImage: "info")
                }
            FavoritesView()
                .tabItem{
                    Label("Favorites", systemImage: "heart")
                }
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
