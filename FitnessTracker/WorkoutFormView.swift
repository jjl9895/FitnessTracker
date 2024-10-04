import SwiftUI
import SwiftData

struct WorkoutFormView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var workoutName = ""
    @State private var sets = ""
    @State private var reps = ""
    @State private var weight = ""

    var body: some View {
        VStack {
            TextField("Workout Name", text: $workoutName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Sets", text: $sets)
                
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Reps", text: $reps)
                
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("Weight", text: $weight)
                
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                addWorkout()
            }) {
                Text("Save Workout")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
    }

    // Function to add workout
    func addWorkout() {
        // Create a new Workout object
        let newWorkout = Workout(name: workoutName, sets: Int(sets) ?? 0, reps: Int(reps) ?? 0, weight: Double(weight) ?? 0.0, date: Date())
        
        // Add it to the model context
        modelContext.insert(newWorkout)
        
        // No need to explicitly call save, SwiftData will handle persistence
    }
}

#Preview {
    WorkoutFormView()
        .modelContainer(for: Item.self, inMemory: true)
}

