//
//  NewToDoView.swift
//  SimpleToDoList (iOS)
//
//  Created by Eralp Mobile on 10.10.2021.
//

import SwiftUI

struct NewToDoView: View {
    @ObservedObject var viewModel: ToDoListViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Your to-do", text: $viewModel.newToDoName)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                Button(action: {
                    
                }, label: {
                    Text("Submit")
                })
                .padding()
                Spacer()
            }
            .navigationTitle("New To-Do")
            .padding()
        }
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(viewModel: ToDoListViewModel())
    }
}
