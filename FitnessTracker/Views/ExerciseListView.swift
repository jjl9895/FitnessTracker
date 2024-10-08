import SwiftUI
import SwiftData

struct ExerciseListView: View {
    @Bindable var session: WorkoutSession

    var body: some View {
        List {
            ForEach(session.exercises) { exercise in
                NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                    Text(exercise.name)
                }
            }
            .onDelete(perform: deleteExercise)
        }
        .navigationTitle(dateFormatter.string(from: session.date))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: ExerciseFormView(session: session)) {
                    Image(systemName: "plus")
                }
            }
        }
    }

    private func deleteExercise(at offsets: IndexSet) {
        for index in offsets {
            let exercise = session.exercises[index]
            session.exercises.remove(at: index)
            modelContext.delete(exercise)
        }
    }

    @Environment(\.modelContext) private var modelContext

    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}
