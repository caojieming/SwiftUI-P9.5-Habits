//
//  HabitDetail.swift
//  Habits
//
//  Created by James Cao on 3/20/25.
//


import SwiftUI

struct HabitDetail: View {
    @Binding var habit: Habit
    
    var body: some View {
        
        VStack(alignment: .center) {
             
            Text(habit.name)
            Text(habit.description)
            
            Text("Completions: \(habit.completions)")
            
            Button(action: { self.habit.addCompletion() }) {
                Text("Add to completions")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(15)
            }
            
            
        } // VStack
        
    }
}

#Preview {
    HabitDetail(habit: .constant(Habit(name: "Workout", description: "Getting fit")))
}
