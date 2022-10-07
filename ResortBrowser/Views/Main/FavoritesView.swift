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
            VStack {
                Image("GVTLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200.0, height:100.0, alignment: .top)
                
                ScrollView {
                    Text("You haven't saved any hotels to your favorites yet")
                        .padding()
                    
                    //Align things to the top
                    Spacer()
                }
                
            }
            .navigationBarTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
