//
//  Habit.swift
//  Habits
//
//  Created by James Cao on 3/20/25.
//

import Foundation

struct Habit: Identifiable, Codable {
    let id = UUID()
    let name: String
    let description: String
    var completions: Int = 0
    
    public mutating func addCompletion() {
        self.completions += 1
    }
}
