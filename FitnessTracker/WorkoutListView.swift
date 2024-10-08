//
//  WorkoutListView.swift
//  FitnessTracker
//
//  Created by Jeffrey Lin on 10/8/24.
//

import SwiftUI
import SwiftData

struct WorkoutListView: View {
    @Query(sort: \Workout.date, order: .reverse) var workouts: [Workout]

    var body: some View {
        NavigationStack {
            List(workouts) { workout in
                VStack(alignment: .leading) {
                    Text(workout.name)
                        .font(.headline)
                    Text("Sets: \(workout.sets), Reps: \(workout.reps), Weight: \(workout.weight, specifier: "%.2f") lbs")
                        .font(.subheadline)
                    Text("Date: \(workout.date, formatter: dateFormatter)")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Workouts")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: WorkoutFormView()) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}
