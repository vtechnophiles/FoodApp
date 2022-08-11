//
//  ContentView.swift
//  FoodApp
//
//  Created by V-TechnoZ on 10/08/22.
//

import SwiftUI

struct ContentView: View {
    
    let items = ["Burrito", "FrenchFries", "Hamburger", "Hotdog", "Muffins", "Noodles", "Pizza", "Sandwich"]
    
    let gridItem = [GridItem(.adaptive(minimum: 150), spacing: 15)]
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: gridItem) {
                    ForEach(items, id: \.self) { item in
                        NavigationLink {
                            DetailView(item: item)
                        } label: {
                            VStack {
                                Image(item)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(maxHeight: 200)
                                    .clipShape(Circle())
                                    .shadow(color: .primary.opacity(0.8), radius: 5)
                                
                                Text(LocalizedStringKey(item))
                                    .font(.headline.bold())
                                    .foregroundColor(.primary)
                            }
                        }
                        
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle("title")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.locale, Locale(identifier: "fr"))
    }
}
