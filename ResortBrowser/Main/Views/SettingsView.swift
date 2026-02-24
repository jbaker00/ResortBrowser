//
//  SettingsView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
import FirebaseAnalytics

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack (spacing:20) {
                Image("GVTLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200.0, height:100.0, alignment: .top)
                
                ScrollView {
                    Text("v 1.0.0.0")
                }
                //Align things to the top
                Spacer()
            }
            .navigationBarTitle("Settings")
        }
        .onAppear {
            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: "Settings",
                AnalyticsParameterScreenClass: "SettingsView"
            ])
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
