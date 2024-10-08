// WorkoutSessionListView.swift

import SwiftUI
import SwiftData

struct WorkoutSessionListView: View {
    @Query(sort: \WorkoutSession.date, order: .reverse) var sessions: [WorkoutSession]

    var body: some View {
        NavigationStack {
            List {
                ForEach(sessions) { session in
                    NavigationLink(destination: ExerciseListView(session: session)) {
                        Text(session.date, formatter: dateFormatter)
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("Workout Sessions")
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

#Preview {
    WorkoutSessionListView()
        .modelContainer(for: WorkoutSession.self, inMemory: true)
}
