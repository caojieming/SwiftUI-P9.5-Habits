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
                    .font(.headline)
                    .frame(maxHeight: 20)
                    
                
                Text(activity.description)
                    .font(.caption)
                    .frame(maxHeight: 20)
                
            }
            
            Spacer()
            
            Text("Completions: \(activity.completions)")
                .font(.title3)
                
        }
    }
}

#Preview {
    HabitView(activity: Habit(name: "Workout", description: "Getting fit"))
}
