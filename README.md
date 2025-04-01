# Notes App

## 📌 Overview

**Notes App** is a simple and efficient note-taking application built with **Flutter** and **Hive**. It allows users to create, edit, and delete notes while storing data locally using **Hive** for fast and efficient storage.

## 🚀 Features

- 📝 **Create Notes**: Easily add new notes with a simple and intuitive interface.
- ✏️ **Edit Notes**: Modify saved notes with real-time updates.
- 🗑️ **Delete Notes**: Remove notes effortlessly when they are no longer needed.
- 💾 **Local Storage with Hive**: Store notes efficiently without the need for an internet connection.
- 🔍 **Search Functionality**: Quickly find notes using keywords.
- 🎨 **Modern UI/UX Design**: A clean and responsive user interface.
- 🌙 **Dark Mode Support**: Enhance readability with a built-in dark mode.

## 🛠️ Technologies Used

- **Flutter (Dart)** – Framework for building cross-platform mobile applications.
- **Hive** – Lightweight and fast NoSQL database for local storage.
- **Cubit (Bloc)** – State management for efficient data handling.
- **Material Design Components** – Ensuring a visually appealing and user-friendly experience.

## 📂 Project Structure

```
notes_app/
│── lib/
│   ├── main.dart                  # Application entry point
│   ├── screens/
│   │   ├── home_screen.dart       # Main screen displaying notes
│   │   ├── note_detail_screen.dart# Screen for creating and editing notes
│   ├── models/
│   │   ├── note.dart              # Note model defining structure
│   ├── cubit/
│   │   ├── notes_cubit.dart       # State management for notes using Cubit
│   │   ├── notes_state.dart       # Different states for the notes Cubit
│   ├── services/
│   │   ├── hive_service.dart      # Hive database service
│   ├── widgets/
│   │   ├── note_item.dart         # UI widget for displaying a note
│── pubspec.yaml                   # Dependency configuration
│── README.md                      # Project documentation
```

## 📦 Installation & Setup

### 1️⃣ Clone the Repository

```sh
   git clone https://github.com/MuhammedAli21/notes_app.git
   cd notes_app
```

### 2️⃣ Install Dependencies

```sh
   flutter pub get
```

### 3️⃣ Initialize Hive

- Ensure you have the `hive` and `hive_flutter` dependencies installed.
- Initialize Hive in the main function before running the app:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(MyApp());
}
```

- Create an adapter for the `Note` model if necessary and register it before opening the box:

```dart
Hive.registerAdapter(NoteAdapter());
await Hive.openBox<Note>('notesBox');
```

### 4️⃣ Run the Application

```sh
   flutter run
```

## 🛠 Contribution Guidelines

We welcome contributions from the community! To contribute:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Commit your changes and push them.
4. Open a pull request with a detailed description.

## 🔮 Future Enhancements

- 📷 **Image Attachments**: Add support for attaching images to notes.
- 🔔 **Reminder Notifications**: Set reminders for important notes.
- 📂 **Note Categorization**: Organize notes into folders.
- ☁️ **Cloud Sync**: Optional cloud backup feature.

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for more details.

## 📧 Contact

For inquiries, issues, or feature requests, feel free to reach out via [**GitHub**](https://github.com/MuhammedAli21) or open an issue in the repository.

