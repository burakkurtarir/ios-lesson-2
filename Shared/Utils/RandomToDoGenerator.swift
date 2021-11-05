//
//  RandomToDoGenerator.swift
//  SimpleToDoList (iOS)
//
//  Created by Eralp Mobile on 10.10.2021.
//

import Foundation

class RandomToDoGenerator {
    private let defaultTodo = ToDoModel(name: "Wtf is this?", createdAt: Date(), updatedAt: Date(), isCompleted: false)
    
    let randomToDos = [
        ToDoModel(name: "Get a milk", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Take a walk", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Buy test book", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Wash the dished", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Ride a bike", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Cook for dinner", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Watch the new episode", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Repair the computer", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Go to gym", createdAt: Date(), updatedAt: Date(), isCompleted: false),
        ToDoModel(name: "Just sleep", createdAt: Date(), updatedAt: Date(), isCompleted: false)
    ]
    
    func getRandom() -> ToDoModel {
        return randomToDos.randomElement() ?? defaultTodo
    }
}
