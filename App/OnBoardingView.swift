//
//  OnBoardingView.swift
//  Fructus
//
//  Created by ANKIT KUMAR on 04/08/23.
//

import SwiftUI

struct OnBoardingView: View {
    // Mark:- Properties
    
    //Mark: Body
    var body: some View {
        TabView{
         
                FruitCardView()
                PlumView()
                MangoView()
                StrawberryCardView()
                AppleCardView()
                CherryView()
                LemonView()
                PomegranateView()
                GooseberryView()
                GrapeFruitView()
              
            }//: Tab
            .tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
        
    }
}
// Mark :- Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
