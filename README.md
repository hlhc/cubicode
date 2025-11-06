<h1 align="center">🧊 Cubicode</h1>

<p align="center"><i>
Inspire young minds to code with Cubicode's intuitive, drag-and-drop interface. Build interactive programs using colorful blocks - no complex syntax required
</i></p>


> [!WARNING]  
> The code is not ready for production! (especially the interpreter and AST tree in `packages/blocky` is not optimized and its running based on a simple while loop).

<small> This creation was whipped up for COMP3330: Interactive Mobile Application Design and Programming at HKU in November 2023, with cleanup and open-sourcing completed in November 2025. </small>

## Introduction 💡

As technology advances, coding skills have become essential for the next generation. However,
traditional coding environments may be challenging for children to get started and prevent them
from exploring the fun of coding—Cubicode provides an accessible platform for children to learn
coding concepts while fostering their creativity.

Cubicode is an innovative mobile application designed to introduce children aged 8-12 to coding in a
fun and interactive way. The app will provide a user-friendly environment by dragging and dropping
code blocks. This mobile application allows users to create programs and learn programming and
logic interactively.

Various applications like this need to be run on computers/tablets, preventing children from learning and
expressing their creativity anytime and anywhere. Mobile phones have become part of our daily
lives. For children, mobile phones even become an "electronic pacifier". With a gamified learning
experience, Cubicode is a good alternative for parents to balance their learning and entertainment.

## Technology/Packages used 🛠️

- Flutter
- Google Firebase 
  - Authentication
  - Firestore
- BLoC
- rxdart
- xterm

## Features ⭐

- User system
- Courses, quizzes to learn programming concepts
- Programs gallery, sharing your code to the public
- Code block library with dirverse functions
- Program exexcution
- Program output on terminal

## How this work 🛠️

When the user create a program using code blocks, the app will convert the code blocks into an Abstract Syntax Tree (AST) representation in JSON. The AST will then be interpreted by a custom interpreter that executes the code. The interpreter processes the AST nodes, executing the corresponding actions defined by the code blocks.

## Getting Started 🚀

```sh
$ flutter run
```

## Project Structure 📁

```
.
├── android                                 Android Native Code (May include fastlane for deployment)
├── assets                                  Assets
├── ios                                     iOS Native Code (May have to do some migration to run on iOS, not tested)
├── lib                                     Flutter Source Code
├── packages                                Extra packages in this project
│   ├── analysis_options                    Shared analysis_options for Dart Analysis Server for root project and packages/*
│   ├── authentication_repository           Authentication related code
│   ├── blocky                              Core block runtime and definition
│   ├── cache                               Cache (Should be unused)
│   ├── form_inputs                         Form inputs validations
│   ├── json_sync                           JSON format in SharePreference or EncryptedSharePreference (Should be unused)
│   ├── projects_repository                 Projects related code
│   ├── quizzes_repository                  Quizzes related code
│   ├── topics_repository                   Topics related code
│   └── transparent_image                   Transparent image (for placeholder)
└── test                                    Test (no test has been done currently)
```

## Some thoughts to make this better 💭

Since this is a prototype project made within 5 days for a university course, there are many areas for improvement:

- Use [isolate](https://docs.flutter.dev/perf/isolates) to prevent blocking the main thread when executing the program. Reason I didn't do it:
  1. Time constraint.
  2. Spawned isolated thread cannot access rootBundle to load assets.
  3. The current interpreter is not optimized, so even in an isolate, it will only prevent UI hangs, but the performance is still not ideal.
  - Hence, rewrite the interpreter in Rust completely instead of dart, and use `flutter_rust_bridge` to call it from Flutter, will be a better solution.
    - This will greatly improve the performance of the interpreter.
    - It provides better memory safety to prevent potential crashes or buffer overflow exploits.
    - Rust has a powerful ecosystem for building interpreters.
- Expand the block library to include more advanced programming concepts and functionalities.
- Implement a better user interface and user experience to make the app more engaging for children.
- Improve the achievement system to give real-time feedback to users about their progress and achievements.
