//
//  AboutUsView.swift
//  ResortBrowser
//
//  Created by James Baker on 8/21/22.
//

import SwiftUI

struct AboutUsView: View {
    var body: some View {
        NavigationView {
            VStack (spacing:30) {
                Image("GVTLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200.0, height:200.0, alignment: .top)

                
                Text("Global Vibes is an exclusive international travel agency.  Our Specialities are Restorts EVERYWHERE.  We have doen work in the Contentinal USA, Alaska, Hawaii, Eourpe, THe Caribeean, Asia, Australia, and Cruise Shops all over the world  For additional information please feel free to reach out to us on FB and IG or by emailing info@globalvibes.com.  We love to help those who do not have time or want to book their own travel.")
                    .padding(.horizontal)
                
                HStack (spacing: 20) {
                    // FB icon button
                    Button {
                        print("FB Button tapped")
                        if let url = URL(string: "https://www.facebook.com/globalvibestravel") {
                            UIApplication.shared.open(url)
                        }
                    } label: {
                        Image("facebook_logo_icon") 
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30.0, height: 30.0, alignment: .top)
                    }
                    
                    //IG icon Button
                    Button {
                        print("IG Button tapped")
                        if let url = URL(string: "https://www.instagram.com/globalvibestravel/") {
                            UIApplication.shared.open(url)
                        }
                    } label: {
                        Image("instagram_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30.0, height: 30.0, alignment: .top)
                    }
                    
                }
                //Align things to the top
                Spacer()
            }
            .navigationBarTitle("About Us")
        }
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}
