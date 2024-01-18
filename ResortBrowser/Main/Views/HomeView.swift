//
//  HomeView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ResortList()
            }
            .navigationBarTitle("Global Vibes Travel")
        }
    }
    
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
