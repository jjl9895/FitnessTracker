import SwiftUI
import SwiftData

struct WorkoutFormView: View {
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @State private var date = Date()

    var body: some View {
        Form {
            DatePicker("Date", selection: $date, displayedComponents: .date)
            Button("Save") {
                let newSession = WorkoutSession(date: date)
                modelContext.insert(newSession)
                dismiss()
            }
            .disabled(date > Date())
        }
        .navigationTitle("New Workout Session")
    }
}
