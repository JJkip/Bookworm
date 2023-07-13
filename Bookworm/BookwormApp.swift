//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Joseph Langat on 06/07/2023.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataConroller()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
