//
//  ExerciseSet.swift
//  FitnessTracker
//
//  Created by Jeffrey Lin on 10/8/24.
//

import Foundation
import SwiftData

@Model
class ExerciseSet {
    var reps: Int
    var weight: Double
    //@Relationship(deleteRule: .cascade, inverse: \Exercise.sets)
    var exercise: Exercise?

    init(reps: Int, weight: Double) {
        self.reps = reps
        self.weight = weight
    }
}

