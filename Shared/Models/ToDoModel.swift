//
//  ToDoModel.swift
//  SimpleToDoList (iOS)
//
//  Created by Eralp Mobile on 10.10.2021.
//

import Foundation

struct ToDoModel: Hashable {
    var name: String
    var createdAt: Date
    var updatedAt: Date
    var isCompleted: Bool
    
    static let preview = ToDoModel(name: "Get a milk", createdAt: Date(), updatedAt: Date(), isCompleted: false)
}
