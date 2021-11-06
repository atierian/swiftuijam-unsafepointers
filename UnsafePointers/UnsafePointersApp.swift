//
//  UnsafePointersApp.swift
//  UnsafePointers
//
//  Created by UnsafePointers on 11/5/21.
//

import SwiftUI

@main
struct UnsafePointersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
