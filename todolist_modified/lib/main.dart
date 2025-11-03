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





SET SERVEROUTPUT ON
DECLARE
  v_sql   VARCHAR2(4000);
  v_year  NUMBER;
  v_table VARCHAR2(200);
  v_cur   SYS_REFCURSOR;
BEGIN
  FOR t IN (SELECT table_name FROM user_tables ORDER BY table_name) LOOP
    BEGIN
      v_sql := 'SELECT DISTINCT EXTRACT(YEAR FROM creation_date_time) FROM "' || t.table_name || '"';
      OPEN v_cur FOR v_sql;
      LOOP
        FETCH v_cur INTO v_year;
        EXIT WHEN v_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(v_year || ' → ' || t.table_name);
      END LOOP;
      CLOSE v_cur;
    EXCEPTION
      WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Skipping ' || t.table_name || ' (Error: ' || SQLERRM || ')');
    END;
  END LOOP;
END;
/

