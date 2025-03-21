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
                .font(.title)
                .padding()
            
            ScrollView {
                Text(habit.description)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
            }
            
            Spacer()
            
            Divider()
                .padding(.vertical)
            
            Text("Current Completions: \(habit.completions)")
            
            HStack {
                Button(action: { self.habit.subtractCompletion() }) {
                    Text("-1 Completion")
                        .font(.title3)
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(15)
                }
                Button(action: { self.habit.addCompletion() }) {
                    Text("+1 Completion")
                        .font(.title3)
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(15)
                }
            }
            
            
        } // VStack
        
    }
}

#Preview {
    HabitDetail(habit: .constant(Habit(name: "Workout", description: "Getting fit")))
}
