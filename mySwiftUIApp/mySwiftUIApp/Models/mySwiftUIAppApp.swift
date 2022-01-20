//
//  mySwiftUIAppApp.swift
//  mySwiftUIApp
//
//  Created by OPSolutions on 1/17/22.
//

import SwiftUI
import Firebase

@main
struct mySwiftUIAppApp: App {
    
    init() {
     FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
    }
}
