import SwiftUI
import SwiftData

@main
struct FitnessTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            WorkoutSessionListView()
        }
        .modelContainer(for: [WorkoutSession.self, Exercise.self, ExerciseSet.self])
    }
}

#Preview {
    WorkoutSessionListView()
        .modelContainer(for: [WorkoutSession.self, Exercise.self, ExerciseSet.self], inMemory: true)
}
