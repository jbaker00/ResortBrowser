   //
//  FavoritesView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
import FirebaseAnalytics

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    Text("You haven't saved any hotels to your favorites yet")
                        .padding()
                    
                    //Align things to the top
                    Spacer()
                }
                
            }
            .navigationBarTitle("Favorites")
        }
        .onAppear {
            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: "Favorites",
                AnalyticsParameterScreenClass: "FavoritesView"
            ])
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
