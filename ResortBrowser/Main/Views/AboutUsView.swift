//
//  AboutUsView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
import FirebaseAnalytics

struct AboutUsView: View {
    var body: some View {
        NavigationView {
            VStack (spacing:30) {
                ScrollView {
                    Text("ResortBrowser helps you discover and browse international resort and hotel listings. Explore resorts by category including beaches, mountains, cities, and deserts from around the world.")
                        .padding(.horizontal)
                }
                //Align things to the top
                Spacer()
            }
            .navigationBarTitle("About Us")
        }
        .onAppear {
            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: "About Us",
                AnalyticsParameterScreenClass: "AboutUsView"
            ])
        }
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
