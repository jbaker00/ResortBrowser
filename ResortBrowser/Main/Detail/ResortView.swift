//
//  ResortView.swift
//  ResortBrowser
//
//  Created by James Baker on 9/4/22.
//

import SwiftUI
#if os(iOS)
import FirebaseAnalytics
#endif

struct ResortView: View {
    var resort: Resorts

    @State private var showBookingDisclaimer = false
    @State private var bookingUrlToOpen: URL?

    var body: some View {
        ScrollView {
            ScrollView {
                AsyncImage(url: URL(string: resort.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image(systemName: "building")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                //.frame(height: 300)
                .frame(maxWidth: UIScreen.main.bounds.width)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))

                VStack(spacing: 30) {
                    Text(resort.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)

                    //URL Website of Hotel
                    if !resort.city.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Link("Website",
                                 destination: URL(string: resort.url)!)
                            .font(.headline)

                        }
                    }

                    // Book Now button
                    if let bookingUrl = URL(string: resort.bookingUrl) {
                        Button(action: {
                            bookingUrlToOpen = bookingUrl
                            showBookingDisclaimer = true
                        }) {
                            Label("Book Now", systemImage: "calendar.badge.plus")
                                .font(.headline)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }
                    }

                    //Description of Hotel
                    VStack(alignment: .leading, spacing: 30) {
                        if !resort.description.isEmpty {
                            Text(resort.description)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
        .alert("Booking Disclosure", isPresented: $showBookingDisclaimer, presenting: bookingUrlToOpen) { url in
            Button("Continue to Booking") {
                UIApplication.shared.open(url)
            }
            Button("Cancel", role: .cancel) { }
        } message: { _ in
            Text("Heads up! If you book through this link, we may earn a small commission at no extra cost to you. Thank you for supporting us!")
        }
        .onAppear {
#if os(iOS)

            Analytics.logEvent(AnalyticsEventScreenView, parameters: [
                AnalyticsParameterScreenName: resort.name,
                AnalyticsParameterScreenClass: "ResortView"
            ])
#endif
        }
    }
}

//struct ResortView_Previews: PreviewProvider {
//    static var previews: some View {
//        ResortView(recipe: Recipe.all[0]) 
//    }
//}
