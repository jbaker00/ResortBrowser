//
//  RecipeView.swift
//  ResortBrowser
//
//  Created by James Baker on 9/4/22.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            ScrollView {
                AsyncImage(url: URL(string: recipe.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Image(systemName: "photo")
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
                    Text(recipe.name)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    //URL Website of Hotel
                    if !recipe.city.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Link("Website",
                                  destination: URL(string: recipe.url)!)
                                .font(.headline)
                            
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 30) {
                        //Description of Hotel
                        if !recipe.description.isEmpty {
                            Text(recipe.description)
                        }
                        

                        
                        //Location of Hotel
                        if !recipe.city.isEmpty {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("City: " + recipe.city + ", Country: " + recipe.country + ", Aiprort: " + recipe.airport)
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

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
