# FitnessTracker

A simple and intuitive fitness tracking app built with SwiftUI and SwiftData. The app allows users to record their workout sessions, track exercises performed, and monitor sets and reps for each exercise.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Technologies Used](#technologies-used)
- [Future Improvements](#future-improvements)
- [License](#license)

## Features

- **Workout Sessions:** Log workout sessions by date.
- **Exercises Tracking:** Add exercises to each workout session.
- **Sets and Reps Management:** Record the number of sets, reps, and weight for each exercise.
- **Data Persistence:** Utilize SwiftData for local data storage.
- **User-Friendly Interface:** Simple and clean UI with intuitive navigation.

## Requirements

- **Xcode 15** or later
- **iOS 17** or later
- **Swift 5.9** or later

## Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/yourusername/FitnessTracker.git
  2. **Open the Project**

   - Navigate to the project directory.
   - Open `FitnessTracker.xcodeproj` with Xcode.

3. **Build the Project**

   - Select the `FitnessTracker` scheme.
   - Choose a simulator or connect your iOS device.
   - Press **Command + B** to build the project.

4. **Run the App**

   - Press **Command + R** to run the app on the selected simulator or device.

## Usage

1. **Launch the App**

   - Upon launching, you'll see a list of your workout sessions sorted by date.

2. **Add a New Workout Session**

   - Tap the **plus (+)** button in the top-right corner.
   - Select the date of the workout session.
   - Tap **Save** to create the session.

3. **Add Exercises to a Session**

   - Select a workout session from the list.
   - Tap the **plus (+)** button to add a new exercise.
   - Enter the exercise name.
   - Tap **Save** to add the exercise to the session.

4. **Add Sets to an Exercise**

   - Select an exercise from the session.
   - Tap the **plus (+)** button to add a new set.
   - Enter the number of reps and weight for the set.
   - Tap **Save** to record the set.

5. **View and Edit Entries**

   - Navigate through your sessions, exercises, and sets.
   - Swipe left on an exercise or set to delete it.
   - Editing functionality can be added in future updates.

## Project Structure

- **Models**
  - `WorkoutSession.swift`: Defines the `WorkoutSession` model.
  - `Exercise.swift`: Defines the `Exercise` model.
  - `ExerciseSet.swift`: Defines the `ExerciseSet` model.

- **Views**
  - `WorkoutSessionListView.swift`: Displays a list of workout sessions.
  - `WorkoutFormView.swift`: Form to add new workout sessions.
  - `ExerciseListView.swift`: Shows exercises in a session.
  - `ExerciseFormView.swift`: Form to add new exercises.
  - `ExerciseDetailView.swift`: Shows sets of an exercise.
  - `SetFormView.swift`: Form to add new sets.

- **App**
  - `FitnessTrackerApp.swift`: Entry point of the app; sets up the model container.

## Technologies Used

- **SwiftUI:** For building the user interface.
- **SwiftData:** For data persistence and management.
- **Xcode 15:** IDE used for development.
- **iOS 17 SDK:** Targeted operating system for the app.

## Future Improvements

- **Editing Entries:** Add functionality to edit workout sessions, exercises, and sets.
- **Data Visualization:** Implement charts to visualize progress over time.
- **User Authentication:** Allow users to create accounts and sync data across devices.
- **Dark Mode Support:** Enhance UI to support dark mode.
- **Localization:** Support multiple languages.

## License

This project is licensed under the MIT License.

