import SwiftUI
import SwiftData

struct SetFormView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @Bindable var exercise: Exercise

    @State private var reps = ""
    @State private var weight = ""

    var body: some View {
        Form {
            TextField("Reps", text: $reps)
                .keyboardType(.numberPad)
            TextField("Weight", text: $weight)
                .keyboardType(.decimalPad)
            Button("Save") {
                guard let repsInt = Int(reps), let weightDouble = Double(weight) else {
                    // Handle invalid input
                    return
                }
                let newSet = ExerciseSet(reps: repsInt, weight: weightDouble)
                exercise.sets.append(newSet)
                modelContext.insert(newSet)
                dismiss()
            }
            .disabled(reps.isEmpty || weight.isEmpty)
        }
        .navigationTitle("New Set")
    }
}
