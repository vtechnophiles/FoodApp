//
//  DetailView.swift
//  FoodApp
//
//  Created by V-TechnoZ on 10/08/22.
//

import SwiftUI

struct DetailView: View {
    
    let item: String
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .bottom) {
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .shadow(color: .primary.opacity(0.8), radius: 10)
                    
                    Text(LocalizedStringKey(item))
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.white.opacity(0.6))
                        .padding(.bottom, 20)
                }
                .padding(.horizontal)
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: "Muffins")
    }
}
