//
//  AddHabit.swift
//  Habits
//
//  Created by James Cao on 3/20/25.
//


import SwiftUI

struct AddHabit: View {
    @State private var name = ""
    @State private var description = ""
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var habits: HabitStore
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
//                TextField("Description", text: $description, axis: .vertical)
                TextEditor(text: $description)
            }
            .navigationBarTitle("Add new habit")
            .navigationBarItems(trailing:
                Button("Save") {
                    let habit = Habit(name: self.name, description: self.description)
                    self.habits.habits.append(habit)
                    self.presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

#Preview {
    AddHabit(habits: HabitStore())
}
