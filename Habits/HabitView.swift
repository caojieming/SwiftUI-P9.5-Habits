//
//  HabitView.swift
//  Habits
//
//  Created by James Cao on 3/20/25.
//


import SwiftUI

struct HabitView: View {
    var activity: Habit
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                Text(activity.name)
                Text(activity.description)
                
            }
            
            Spacer()
            
            Text("Completions: \(activity.completions)")
                
        }
    }
}

#Preview {
    HabitView(activity: Habit(name: "Workout", description: "Getting fit"))
}
