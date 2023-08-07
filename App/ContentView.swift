//
//  ContentView.swift
//  Fructus
//
//  Created by ANKIT KUMAR on 03/08/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    @State private var isShowingSettings: Bool = false
    var fruit: [Fruit] = fruitsData
    var body: some View {
        HStack{
            NavigationView {
           
                List{
                    ForEach(fruit.shuffled()) { item in
                        NavigationLink(destination: FruitDetailView(fruit: item)){
                            
                            Gooseberry(fruit: item)
                            
                        }
                    }
                }
                
                .navigationTitle("Fruits")
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            isShowingSettings = true
                        }) {
                            Image(systemName: "slider.horizontal.3")
                        }
                        .sheet(isPresented: $isShowingSettings) {
                          SettingsView()
                        }
                            
                )
            }
        }
     
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
           
    }
}
