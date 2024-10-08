//
//  WorkoutSession.swift
//  FitnessTracker
//
//  Created by Jeffrey Lin on 10/8/24.
//

import Foundation
import SwiftData

@Model
class WorkoutSession {
    var date: Date
    //@Relationship(deleteRule: .cascade, inverse: \Exercise.session)
    var exercises: [Exercise]

    init(date: Date, exercises: [Exercise] = []) {
        self.date = date
        self.exercises = exercises
    }
}
