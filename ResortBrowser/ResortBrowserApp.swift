//
//  ResortBrowserApp.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI
import FirebaseCore

@main
struct ResortBrowserApp: App {

    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
