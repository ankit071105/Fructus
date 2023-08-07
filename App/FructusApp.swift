//
//  FructusApp.swift
//  Fructus
//
//  Created by ANKIT KUMAR on 03/08/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true

    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            }else{
                ContentView()
            }
        
        }
    }
}
