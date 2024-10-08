//
//  Workout.swift
//  FitnessTracker
//
//  Created by Jeffrey Lin on 10/4/24.
//

import Foundation
import SwiftData

@Model
class Workout: Identifiable {
    // Remove the manual 'id' property if using '@Model'
    var name: String
    var sets: Int
    var reps: Int
    var weight: Double
    var date: Date

    init(name: String, sets: Int, reps: Int, weight: Double, date: Date) {
        self.name = name
        self.sets = sets
        self.reps = reps
        self.weight = weight
        self.date = date
    }
}
