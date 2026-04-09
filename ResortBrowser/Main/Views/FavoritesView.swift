   //
//  FavoritesView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
#if os(iOS)
import FirebaseAnalytics
#endif

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "beach.umbrella")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.teal)

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
#if os(iOS)

            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: "Favorites",
                AnalyticsParameterScreenClass: "FavoritesView"
            ])
#endif
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
