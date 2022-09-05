//
//  SettingsView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v 1.0.0.0")
                .navigationTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
