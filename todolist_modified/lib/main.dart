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





SELECT 
    'SELECT ''' || table_name || ''' AS TABLE_NAME, ' ||
    'TO_CHAR(MAX(creation_date_time), ''YYYY'') AS DATA_YEAR ' ||
    'FROM ' || owner || '.' || table_name || ' UNION ALL'
FROM dba_tables
WHERE owner = 'YOUR_SCHEMA_NAME'
ORDER BY table_name;



SET SERVEROUTPUT ON
DECLARE
    v_sql        VARCHAR2(1000);
    v_last_date  DATE;
BEGIN
    FOR t IN (
        SELECT owner, table_name
        FROM dba_tables
        WHERE owner = 'YOUR_SCHEMA_NAME'   -- 🔹 Replace with your schema (in uppercase)
          AND table_name NOT LIKE 'BIN$%'  -- exclude dropped tables
    )
    LOOP
        BEGIN
            v_sql := 'SELECT MAX(creation_date_time) FROM ' || t.owner || '.' || t.table_name;
            EXECUTE IMMEDIATE v_sql INTO v_last_date;
            
            IF v_last_date IS NOT NULL THEN
                DBMS_OUTPUT.PUT_LINE(
                    t.owner || '.' || t.table_name || ' -> Last Insert Year: ' || TO_CHAR(v_last_date, 'YYYY')
                );
            ELSE
                DBMS_OUTPUT.PUT_LINE(t.owner || '.' || t.table_name || ' -> No Data / creation_date_time is NULL');
            END IF;
        EXCEPTION
            WHEN OTHERS THEN
                DBMS_OUTPUT.PUT_LINE(t.owner || '.' || t.table_name || ' -> creation_date_time column missing');
        END;
    END LOOP;
END;
/
