import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:intl/intl.dart";
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sqflite/sqflite.dart';
import "package:path/path.dart" as p;

class SingleTaskModel {
  int? taskno;
  String title;
  String description;
  String date;

  SingleTaskModel(
      {required this.title, required this.description, required this.date});

  Map<String, String> toMap() {
    return {"title": title, "description": description, "date": date};
  }
}

dynamic database1;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database1 = await openDatabase(
    p.join(await getDatabasesPath(), "Tododatabase.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''

    CREATE TABLE SingleTaskModel(taskNo INT PRIMARY KEY,title TEXT description TEXT,date TEXT)
''');
    },
  );
  runApp(const MainApp());
}

Future retriveDb() async {
  final ldb = await database1;

  final List playerList = await ldb.query("SingleTaskModel");

  return List.generate(playerList.length, (i) {
    return SingleTaskModel(
      title: playerList[i]["title"],
      description: playerList[i]["description"],
      date: playerList[i]["date"],
    );
  });
}

Future<void> inserTodo(SingleTaskModel obj) async {
  final ldb = await database1;

  await ldb.insert(
    "SingleTaskModel",
    obj.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoListModifies(),
    );
  }
}

class TodoListModifies extends StatefulWidget {
  const TodoListModifies({super.key});

  @override
  State<TodoListModifies> createState() => _TodoListState();
}

class _TodoListState extends State<TodoListModifies> {
  List taskList = [];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _loginKey = GlobalKey();

  List username = ["Atharva", "Aditya"];
  List password = ["123", "345"];
  bool isUser(String username1, String password1) {
    for (int i = 0; i < username.length; i++) {
      if (username[i] == username1.trim() && password[i] == password1.trim()) {
        return true;
      }
    }
    return false;
  }

  bool isHomePage = true;

  Future submit(bool doEdit, [SingleTaskModel? obj2]) async {
    if (_titleController.text.trim().isNotEmpty &&
        _taskController.text.trim().isNotEmpty &&
        _dateController.text.trim().isNotEmpty) {
      if (!doEdit) {
        SingleTaskModel obj = SingleTaskModel(
            title: _titleController.text.trim(),
            description: _taskController.text.trim(),
            date: _dateController.text.trim());
        await inserTodo(obj);
        addToList();
        setState(() {
          // taskList.add(SingleTaskModel(
          //     title: _titleController.text.trim(),
          //     description: _taskController.text.trim(),
          //     date: _dateController.text.trim()));
        });
      } else {
        setState(() {
          obj2!.title = _titleController.text.trim();
          obj2.description = _taskController.text.trim();
          obj2.date = _dateController.text.trim();
        });
      }
    }
    Navigator.of(context).pop();
    clearControllers();
  }

  void clearControllers() {
    _titleController.clear();
    _dateController.clear();
    _taskController.clear();
  }

  void edit(SingleTaskModel obj3) {
    _titleController.text = obj3.title;
    _taskController.text = obj3.description;
    _dateController.text = obj3.date;

    setState(() {
      showSheet(true, obj3);
    });
  }

  void delete(SingleTaskModel singleTaskModel) {
    taskList.remove(singleTaskModel);
  }

  void addToList() async {
    taskList = await retriveDb();

    setState(() {});
    print(taskList[0]);
  }

  void initState() {
    addToList();
    print(taskList);
    print("Init State ");
    super.initState();
  }

  Future<void> showSheet(bool doEdit, [SingleTaskModel? obj1]) async {
    await showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                right: 10,
                left: 10,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Create To do List",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Title",
                      style: TextStyle(
                          fontSize: 11, color: Color.fromRGBO(89, 57, 241, 1)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                          hintText: "Enter Title",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 11, color: Color.fromRGBO(89, 57, 241, 1)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: _taskController,
                      decoration: const InputDecoration(
                          hintText: "Enter Description",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Date",
                      style: TextStyle(
                          fontSize: 11, color: Color.fromRGBO(89, 57, 241, 1)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      onTap: () async {
                        DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025));

                        if (date != null) {
                          String dateForm = DateFormat.yMMMMd().format(date);
                          setState(() {
                            _dateController.text = dateForm;
                          });
                        }
                      },
                      readOnly: true,
                      controller: _dateController,
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.calendar_month_outlined),
                          hintText: "Enter Date",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    if (doEdit == true) {
                      submit(doEdit, obj1);
                    } else {
                      submit(doEdit);
                    }
                    _dateController.clear();
                    _taskController.clear();
                    _titleController.clear();
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      backgroundColor: const Color.fromRGBO(89, 57, 241, 1)),
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        });
  }

  Scaffold loginPage() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        title: const Text("Welcome "),
      ),
      body: Form(
          key: _loginKey,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                // Image.network(
                //     "data:image/jpeg;base64,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"),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
                  child: TextFormField(
                    controller: _usernameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Username";
                      } else if (value.isNotEmpty &&
                          isUser(_usernameController.text,
                                  _passwordController.text) ==
                              false) {
                        return "Enter Correct Username";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        label: const Text(
                          "Enter Username",
                          style: TextStyle(
                            fontSize: 15,
                            //color: Color.fromRGBO(111, 81, 255, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color.fromRGBO(111, 81, 255, 1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color.fromRGBO(111, 81, 255, 1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Password";
                      } else if (value.isNotEmpty &&
                          isUser(_usernameController.text,
                                  _passwordController.text) ==
                              false) {
                        return "Enter Correct Password";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        label: const Text(
                          "Enter Password",
                          style: TextStyle(
                            fontSize: 15,
                            //  color: Color.fromRGBO(111, 81, 255, 1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color.fromRGBO(111, 81, 255, 1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color.fromRGBO(111, 81, 255, 1)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(150, 50)),
                    onPressed: () {
                      bool isLogin = _loginKey.currentState!.validate();
                      if (isLogin) {
                        if (isUser(_usernameController.text,
                                _passwordController.text) ==
                            true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Login successful")));
                          setState(() {
                            isHomePage = true;
                          });
                        }
                      } else if (_usernameController.text.isNotEmpty &&
                          _passwordController.text.isNotEmpty &&
                          isUser(_usernameController.text,
                                  _passwordController.text) ==
                              false) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("User not found")));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Login failed")));
                      }
                    },
                    child: const Text("Submit")),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )),
    );
  }

  Scaffold newScaffold() {
    if (isHomePage == false) {
      return loginPage();
    } else {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Atharva",
                  style: GoogleFonts.quicksand(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "CREATE TASKS",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: ListView.builder(
                              itemCount: taskList.length,
                              itemBuilder: ((context, index) {
                                return Slidable(
                                  closeOnScroll: true,
                                  endActionPane: ActionPane(
                                    motion: const DrawerMotion(),
                                    extentRatio: 0.2,
                                    children: [
                                      Expanded(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              edit(taskList[index]);
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    89, 57, 241, 1),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Icon(
                                                Icons.edit,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                delete(taskList[index]);
                                              });
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(
                                                    89, 57, 241, 1),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          )
                                        ],
                                      ))
                                    ],
                                  ),
                                  key: ValueKey(index),
                                  child: Container(
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(top: 10),
                                    padding: const EdgeInsets.only(
                                        top: 20,
                                        right: 20,
                                        bottom: 20,
                                        left: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 0.5,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 0.5),
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                            offset: Offset(0, 4),
                                            blurRadius: 20,
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.13))
                                      ],
                                      borderRadius:
                                          const BorderRadius.all(Radius.zero),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 60,
                                              decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      217, 217, 217, 1),
                                                  shape: BoxShape.circle),
                                              child: Image.asset(
                                                  "assets/Group 42.png"),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Container(
                                              width: 215,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      taskList[index].title,
                                                      style: GoogleFonts.inter(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      taskList[index]
                                                          .description,
                                                      style: GoogleFonts.inter(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: const Color
                                                                  .fromRGBO(
                                                              0, 0, 0, 0.7)),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      taskList[index].date,
                                                      style: GoogleFonts.inter(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: const Color
                                                                  .fromRGBO(
                                                              0, 0, 0, 0.7)),
                                                    ),
                                                  ]),
                                            ),
                                            Checkbox(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                activeColor: Colors.green,
                                                value: true,
                                                onChanged: (val) {}),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              })),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print(taskList);
            clearControllers();
            showSheet(
              false,
            );

            setState(() {});
          },
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return newScaffold();
  }
}
