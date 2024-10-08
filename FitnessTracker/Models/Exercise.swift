//
//  Exercise.swift
//  FitnessTracker
//
//  Created by Jeffrey Lin on 10/8/24.
//

import Foundation
import SwiftData

@Model
class Exercise {
    var name: String
    //@Relationship(deleteRule: .cascade, inverse: \ExerciseSet.exercise)
    var sets: [ExerciseSet]
    //@Relationship(deleteRule: .nullify, inverse: \WorkoutSession.exercises)
    var session: WorkoutSession?

    init(name: String, sets: [ExerciseSet] = []) {
        self.name = name
        self.sets = sets
    }
}
