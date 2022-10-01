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
            VStack (spacing:20) {
                Image("GVTLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200.0, height:200.0, alignment: .top)
                
                Text("v 1.0.0.0")
                
                //Align things to the top
                Spacer()
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
