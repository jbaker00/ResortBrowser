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
                    Text("Resort Browser is your go-to app for discovering amazing resorts and hotels around the world. Browse by category, explore destinations, and find your perfect getaway.")
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
