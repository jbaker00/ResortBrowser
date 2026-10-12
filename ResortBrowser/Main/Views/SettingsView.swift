//
//  SettingsView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
#if os(iOS)
import FirebaseAnalytics
#endif

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack (spacing:20) {
                Image(systemName: "beach.umbrella")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.teal)

                ScrollView {
                    Text("v 1.0.0.0")
                }
                //Align things to the top
                Spacer()
            }
            .navigationBarTitle("Settings")
        }
        .onAppear {
#if os(iOS)

            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: "Settings",
                AnalyticsParameterScreenClass: "SettingsView"
            ])
#endif
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
