//
//  ThreadsApp.swift
//  Threads
//
//  Created by MasterBi on 7/7/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct ThreadsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegatek
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
