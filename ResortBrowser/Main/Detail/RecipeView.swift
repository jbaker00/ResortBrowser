//
//  RecipeView.swift
//  ResortBrowser
//
//  Created by James Baker on 9/4/22.
//

import SwiftUI

struct RecipeView: View {
    var resort: Resorts
    
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
                    
                    VStack(alignment: .leading, spacing: 30) {
                        //Description of Hotel
                        if !resort.description.isEmpty {
                            Text(resort.description)
                        }
                        

                        
                        //Location of Hotel
                        if !resort.city.isEmpty {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("City: " + resort.city + ", Country: " + resort.country + ", Aiprort: " + resort.airport)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}

//struct RecipeView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeView(recipe: Recipe.all[0])
//    }
//}
