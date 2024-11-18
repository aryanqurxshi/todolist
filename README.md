Flutter To-Do App

Hi there! 👋

This is my To-Do List app, built as a way to dive deeper into Flutter development and learn BLoC state management. It's a simple, cross-platform app for managing daily tasks, and while it's functional, there’s still a lot of room for improvement.

🌟 Features (So Far)
Here’s what the app can do right now:

Add and Delete Tasks: Create tasks and remove them when no longer needed.
Mark Tasks as Completed: Check off tasks that are done!
Basic Task Persistence: Uses local storage to save tasks (currently testing with SharedPreferences).

🎯 Work in Progress
I’m still actively working on refining this app. Some features I’m planning to add or improve:

Edit Tasks: Add the ability to update an existing task.
Task Categories: Group tasks by categories or tags.
Priority Levels: Highlight tasks based on their importance.
Enhanced UI/UX: Improve the design to make it look and feel more polished.
Better Persistence: Switch to SQLite for more robust data storage.
Unit Tests: Add test coverage to ensure everything works smoothly.
This project is far from finished, and that’s okay! I’m using this as a way to learn, experiment, and improve my skills.

🚀 Why BLoC?
State management can be tricky, and I chose BLoC because it seems like a powerful and scalable way to manage app state. So far, I’ve been focusing on:

Using Streams to manage task data dynamically.
Structuring the app with Events and States to keep things clean.
Debugging and testing BLoC logic (and learning from my mistakes!).
🛠️ How to Run It
If you'd like to check it out and maybe even give me some feedback:

Clone the project:


git clone https://github.com/yourusername/flutter-todo-app.git
cd flutter-todo-app
Install dependencies:


flutter pub get

Run the app:

flutter run

📂 Project Structure
Here’s how the project is currently organized:


lib/
├── main.dart         # App entry point
├── models/           # Task data model
├── blocs/            # BLoC state management logic
├── screens/          # UI screens (e.g., Home, Add Task)
├── widgets/          # Custom reusable widgets
└── utils/            # Helper functions and constants
