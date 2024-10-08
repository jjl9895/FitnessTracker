import SwiftUI
import SwiftData

struct WorkoutFormView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @State private var workoutName = ""
    @State private var sets = ""
    @State private var reps = ""
    @State private var weight = ""

    var body: some View {
        Form {
            Section(header: Text("Workout Details")) {
                TextField("Workout Name", text: $workoutName)
                TextField("Sets", text: $sets)
                TextField("Reps", text: $reps)
                TextField("Weight", text: $weight)
            }

            Button(action: {
                addWorkout()
            }) {
                Text("Save Workout")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
            }
            .disabled(workoutName.isEmpty || sets.isEmpty || reps.isEmpty || weight.isEmpty)
        }
        .navigationTitle("New Workout")
        .navigationBarTitleDisplayMode(.inline)
    }

    func addWorkout() {
        let newWorkout = Workout(
            name: workoutName,
            sets: Int(sets) ?? 0,
            reps: Int(reps) ?? 0,
            weight: Double(weight) ?? 0.0,
            date: Date()
        )

        modelContext.insert(newWorkout)
        dismiss()
    }
}


#Preview {
    WorkoutFormView()
        .modelContainer(for: Workout.self, inMemory: true)
}


