//
//  ViewModel.swift
//  ResortBrowser
//
//  Created by James Baker on 3/23/23.
//

import Foundation
import Firebase

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case beach = "Beach"
    case mountain = "Mountain"
    case city = "City"
    case desert = "Desert"
}

struct Resorts: Identifiable {
    var id: String
    var name: String
    var image: String
    var description: String
    var city: String
    var country: String
    var category: Category.RawValue
    var airport: String
    var url: String
}

