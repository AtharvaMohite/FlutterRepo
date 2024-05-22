import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:todolist_modified/view/loginpage.dart';
import 'controller/database_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseModel.openDB();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todolist',
      home: const TodoList(),
      theme:
          ThemeData(textTheme: TextTheme(titleMedium: GoogleFonts.quicksand())),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({
    super.key,
  });

  @override
  State<TodoList> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}
