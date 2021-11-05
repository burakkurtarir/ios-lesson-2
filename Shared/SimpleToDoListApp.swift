//
//  SimpleToDoListApp.swift
//  Shared
//
//  Created by Eralp Mobile on 10.10.2021.
//

import SwiftUI

@main
struct SimpleToDoListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
            ToDoListView()
        }
    }
}
