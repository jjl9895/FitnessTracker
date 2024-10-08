//
//  ExerciseFormView.swift
//  FitnessTracker
//
//  Created by Jeffrey Lin on 10/8/24.
//

import Foundation
import SwiftUI
import SwiftData

struct ExerciseFormView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @Bindable var session: WorkoutSession

    @State private var name = ""

    var body: some View {
        Form {
            TextField("Exercise Name", text: $name)
            Button("Save") {
                let newExercise = Exercise(name: name)
                newExercise.session = session
                session.exercises.append(newExercise)
                modelContext.insert(newExercise)
                dismiss()
            }
            .disabled(name.isEmpty)
        }
        .navigationTitle("New Exercise")
    }
}
