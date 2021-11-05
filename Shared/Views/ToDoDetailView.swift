//
//  ToDoDetailView.swift
//  SimpleToDoList (iOS)
//
//  Created by Eralp Mobile on 10.10.2021.
//

import SwiftUI

struct ToDoDetailView: View {
    @Binding var name: String
    
    var body: some View {
        TextField("Your to-do", text: $name)
    }
}
