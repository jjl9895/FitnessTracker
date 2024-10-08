//
//  ExerciseDetailView.swift
//  FitnessTracker
//
//  Created by Jeffrey Lin on 10/8/24.
//

import Foundation
import SwiftUI
import SwiftData

struct ExerciseDetailView: View {
    @Bindable var exercise: Exercise

    var body: some View {
        List {
            ForEach(exercise.sets) { set in
                VStack(alignment: .leading) {
                    Text("Reps: \(set.reps)")
                    Text("Weight: \(set.weight, specifier: "%.2f") lbs")
                }
            }
            .onDelete(perform: deleteSet)
        }
        .navigationTitle(exercise.name)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: SetFormView(exercise: exercise)) {
                    Image(systemName: "plus")
                }
            }
        }
    }

    private func deleteSet(at offsets: IndexSet) {
        for index in offsets {
            let set = exercise.sets[index]
            exercise.sets.remove(at: index)
            modelContext.delete(set)
        }
    }

    @Environment(\.modelContext) private var modelContext
}
