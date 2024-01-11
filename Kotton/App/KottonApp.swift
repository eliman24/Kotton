//
//  KottonApp.swift
//  Kotton
//
//  Created by Elisabeth Manalo on 11/21/23.
//

import SwiftUI
import Firebase

@main
struct KottonApp: App {
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }
    
//    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataManager)
                
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
