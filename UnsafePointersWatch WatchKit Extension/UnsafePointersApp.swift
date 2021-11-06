//
//  UnsafePointersApp.swift
//  UnsafePointersWatch WatchKit Extension
//
//  Created by UnsafePointers on 11/6/21.
//

import SwiftUI

@main
struct UnsafePointersApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
