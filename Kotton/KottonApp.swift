//
//  KottonApp.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 11/21/23.
//

import SwiftUI

@main
struct KottonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
