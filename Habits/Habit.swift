//
//  Habit.swift
//  Habits
//
//  Created by James Cao on 3/20/25.
//

import Foundation

struct Habit: Identifiable, Codable {
    // using "private(set) var" instead of "let" removes a warning while functioning the same
    private(set) var id = UUID()
    let name: String
    let description: String
    var completions: Int = 0
    
    public mutating func addCompletion() {
        self.completions += 1
    }
    
    public mutating func subtractCompletion() {
        self.completions -= 1
    }
}
