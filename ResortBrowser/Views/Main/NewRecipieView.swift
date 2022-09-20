//
//  NewRecipieView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI

struct NewRecipieView: View {
    var body: some View {
        NavigationView {
            Text("Global Vibes is an exclusive international travel agency.  Our Specialities are Restorts EVERYWHERE.  We have doen work in the Contentinal USA, Alaska, Hawaii, Eourpe, THe Caribeean, Asia, Australia, and Cruise Shops all over the world  For additional information please feel free to reach out to us at www.globalvibes.com or by emailing info@globalvibes.com.  We love to help those who do not have time or want to book their own travel.Dont forget to check us out on FB and IG")
                .navigationTitle("About Us")
                .padding(.horizontal)

        }
    }
}

struct NewRecipieView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipieView()
    }
}
