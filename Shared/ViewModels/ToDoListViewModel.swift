//
//  ToDoListViewModel.swift
//  SimpleToDoList (iOS)
//
//  Created by Eralp Mobile on 10.10.2021.
//

import Foundation

class ToDoListViewModel: ObservableObject {
    
    let previewToDoList = [ToDoModel](repeating: ToDoModel.preview, count: 3)
    
    @Published var toDoList = [ToDoModel]()
    @Published var newTodoPresented = false
    @Published var newToDoName = ""
    
    func add(toDo: ToDoModel) -> Void {
        toDoList.append(toDo)
    }
    
    func remove(at index: IndexSet) -> Void {
        toDoList.remove(atOffsets: index)
    }
    
    func move(fromOffsets: IndexSet, toOffset: Int) -> Void {
        toDoList.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
    
    func toggleNewTodo() -> Void {
        newTodoPresented.toggle()
    }
}
