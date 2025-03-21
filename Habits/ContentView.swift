//
//  ContentView.swift
//  Habits
//
//  Created by James Cao on 12/10/24.
//

import SwiftUI

// assigns indexes to habits, used for ForEach list looping
extension Sequence {
    func indexed() -> Array<(offset: Int, element: Element)> {
        return Array(enumerated())
    }
}

struct ContentView: View {
    @ObservedObject var habitList = HabitStore()
    @State private var showAddHabit = false
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(habitList.habits.indexed(), id: \.1.id) { index, activity in
                    NavigationLink(destination: HabitDetail(habit: self.$habitList.habits[index])) {
                        HabitView(activity: activity)
                    }
                }
                .onDelete(perform: removeHabit)
                
            }
            .navigationTitle("Habit List")
            .overlay(Group {
                if habitList.habits.isEmpty {
                    Text("Press the plus button to add a new Habit.")
                        .foregroundStyle(.gray)
                }
            })
            .sheet(isPresented: $showAddHabit) {
                AddHabit(habits: self.habitList)
            }
            .navigationBarItems(trailing:
                Button(action: { self.showAddHabit = true }) {
                    Image(systemName: "plus")
                }
            )
            
        } // NavigationView
        
    }
    
    // remove by removing from stored list
    func removeHabit(at offsets: IndexSet) {
        habitList.habits.remove(atOffsets: offsets)
    }
    
}

#Preview {
    ContentView()
}
