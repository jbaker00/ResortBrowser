//
//  HomeView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
import FirebaseAnalytics

struct HomeView: View {
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ResortList()
            }
            .navigationBarTitle("Resorts")
        }
        .onAppear {
            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: "Home",
                AnalyticsParameterScreenClass: "HomeView"
            ])
        }
    }
    
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
