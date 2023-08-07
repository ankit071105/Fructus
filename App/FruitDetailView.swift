//
//  FruitDetailView.swift
//  Fructus
//
//  Created by ANKIT KUMAR on 04/08/23.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20 )
                {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 30) {
                        // Title
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        // HeadLine
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrients
                        FruitNutrionView(fruit: fruit)
                        
                        // SubHeading
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        
                        // Descritpion
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            .italic()
                        
                        // Link
                      SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
            .foregroundColor(Color(hue: 0.501, saturation: 0.127, brightness: 1.0))
            .background(Color(hue: 0.489, saturation: 0.153, brightness: 0.048, opacity: 0.857))
        }

       
    }
}
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[2])
    }
}
