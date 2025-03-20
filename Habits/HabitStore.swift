//
//  HabitStore.swift
//  Habits
//
//  Created by James Cao on 3/20/25.
//

import Foundation

// responsible for long term storage of Habit names, descriptions, completions

class HabitStore: ObservableObject {
    
    // the list itself in the form of an array, manipulate with "<var_name>.habits"
    @Published var habits = [Habit]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(habits) {
                UserDefaults.standard.set(encoded, forKey: "Habits")
            }
        }
    }
    
    // storage setup
    init() {
        if let habits = UserDefaults.standard.data(forKey: "Habits") {
            let decoder = JSONDecoder()
            
            if let decoded = try? decoder.decode([Habit].self, from: habits) {
                self.habits = decoded
                return
            }
        }
        
        self.habits = []
    }
}
