//
//  HomeView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
#if os(iOS)
import FirebaseAnalytics
#endif

struct HomeView: View {
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ResortList()
            }
            .navigationBarTitle("Resort Browser")
        }
        .onAppear {
#if os(iOS)

            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: "Home",
                AnalyticsParameterScreenClass: "HomeView"
            ])
#endif
        }
    }
    
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
