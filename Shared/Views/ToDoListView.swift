//
//  ToDoListView.swift
//  SimpleToDoList (iOS)
//
//  Created by Eralp Mobile on 10.10.2021.
//

import SwiftUI

struct ToDoListView: View {
    private let randomGenerator = RandomToDoGenerator()
    @StateObject private var viewModel = ToDoListViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.toDoList, id: \.self){ toDo in
                    Text("\(toDo.name)")
                }
                .onDelete(perform: viewModel.remove)
                .onMove(perform: viewModel.move)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Simple To-Do List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: Button(action: {
                    let toDo = randomGenerator.getRandom()
                    viewModel.add(toDo: toDo)
                }, label: {
                    Label("New", systemImage: "plus")
                })
            )
        }
        
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}
