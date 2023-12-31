//
//  DataController.swift
//  Bookworm
//
//  Created by Joseph Langat on 08/07/2023.
//
import CoreData
import Foundation

class DataConroller: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
            
        }
    }
}
