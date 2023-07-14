//
//  Tennis_ShopApp.swift
//  Tennis.Shop
//
//  Created by liwaa on 23/05/2023.
//

import SwiftUI
import Firebase
import FirebaseAuth


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        Auth.auth().useAppLanguage()
        return true
    }
}


@main
struct Tennis_ShopApp: App {
    // @State private var isLoggedIn = false // Add this state variable
    
    var body: some Scene {
        WindowGroup {
      //      if isLoggedIn {
                ContentView()
      //      } else {
             //   SignUpView(isLoggedIn:$isLoggedIn)
      //      }
        }
    }
}

