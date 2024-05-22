import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todolist_modified/model/model_class.dart';
import "package:google_fonts/google_fonts.dart";
import "package:intl/intl.dart";
import 'package:todolist_modified/controller/database_model.dart';
import "package:flutter_slidable/flutter_slidable.dart";

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _taskController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  List<TodoModel> objList = [];

  Future showBottomSht1(bool doEdit, [TodoModel? todoModelObj]) async {
    await showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Create Tasks",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        hintText: "Enter Title",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: _taskController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: "Enter Description",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: _dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Enter Date",
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2025),
                        );
                        if (pickedDate != null) {
                          String formatedDate =
                              DateFormat.yMMMd().format(pickedDate);
                          _dateController.text = formatedDate;
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                  onPressed: () {
                    doEdit ? sumbit(true, todoModelObj) : sumbit(false);
                    log(objList.toString());
                  },
                  child: Text(
                    (doEdit) ? "Edit" : "Submit",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void addtolist() async {
    objList = await DatabaseModel.getData();

    setState(() {});
  }

  bool controllerNotEmpty() {
    if (_titleController.text.trim().isNotEmpty &&
        _taskController.text.trim().isNotEmpty &&
        _dateController.text.trim().isNotEmpty) {
      return true;
    }

    return false;
  }

  void sumbit(bool isedit, [TodoModel? todoModel]) {
    if (controllerNotEmpty()) {
      if (isedit == false) {
        setState(() {
          TodoModel obj = TodoModel(
              title: _titleController.text,
              description: _taskController.text,
              date: _dateController.text);
          log("in add submit isedit = $isedit");
          log("in submit add task ${obj.title!}");
          DatabaseModel.insertDB(TodoModel(
              title: _titleController.text,
              description: _taskController.text,
              date: _dateController.text));
          addtolist();
        });
      } else {
        log("in else submit ${todoModel!.id}");

        setState(() {
          TodoModel updatedTask = TodoModel(
              id: todoModel.id!, // Ensure the ID is retained for update
              title: _titleController.text,
              description: _taskController.text,
              date: _dateController.text);

          DatabaseModel.updateDB(updatedTask);
          addtolist();
        });
      }
    }
    clearControllers();

    Navigator.pop(context);
  }

  void clearControllers() {
    _titleController.clear();
    _dateController.clear();
    _taskController.clear();
  }

  @override
  void initState() {
    super.initState();
    addtolist();
  }

  bool isTaskComleted = false;

  void toggleCheckBox(int index) {
    if (objList[index].isCompleted == 0) {
      objList[index].isCompleted = 1;
    } else if (objList[index].isCompleted == 1) {
      objList[index].isCompleted = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(111, 81, 255, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 29, top: 45, bottom: 41),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Morning",
                    style: GoogleFonts.quicksand(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Text(
                    "Atharva",
                    style: GoogleFonts.quicksand(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            //log(objList);

                            log("id ${objList[0].id.runtimeType}");
                          },
                          child: Text(
                            "CREATE TO DO LIST",
                            style: GoogleFonts.quicksand(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(top: 39),
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40))),
                            child: SlidableAutoCloseBehavior(
                              child: ListView.builder(
                                  itemCount: objList.length,
                                  itemBuilder: (context, index) {
                                    return Slidable(
                                      closeOnScroll: true,
                                      key: ValueKey(objList[index].id),
                                      endActionPane: ActionPane(
                                          extentRatio: 0.2,
                                          motion: const DrawerMotion(),
                                          children: [
                                            Expanded(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    _titleController.text =
                                                        objList[index].title!;
                                                    _taskController.text =
                                                        objList[index]
                                                            .description!;

                                                    _dateController.text =
                                                        objList[index].date!;
                                                    showBottomSht1(
                                                        true, objList[index]);
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              89, 57, 241, 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
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
                                                    DatabaseModel.deletefromDB(
                                                        objList[index].id!);
                                                    addtolist();
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    height: 40,
                                                    width: 40,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromRGBO(
                                                              89, 57, 241, 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: const Icon(
                                                      Icons.delete,
                                                      color: Colors.white,
                                                      size: 20,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                )
                                              ],
                                            ))
                                          ]),
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 20),
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                          left: 20,
                                          bottom: 10,
                                        ),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: Colors.black12,
                                        )),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10,
                                                  right: 16,
                                                  bottom: 20),
                                              height: 52,
                                              width: 52,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.grey),
                                            ),
                                            SizedBox(
                                              width: 237,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "${objList[index].title}",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text(
                                                      "${objList[index].description}",
                                                      style:
                                                          GoogleFonts.quicksand(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  Text("${objList[index].date}",
                                                      style:
                                                          GoogleFonts.quicksand(
                                                              fontSize: 10,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                ],
                                              ),
                                            ),
                                            Checkbox(
                                              value:
                                                  (objList[index].isCompleted ==
                                                          0)
                                                      ? false
                                                      : true,
                                              onChanged: (value) {
                                                setState(() {
                                                  toggleCheckBox(index);

                                                  DatabaseModel.updateDB(
                                                      objList[index]);
                                                  addtolist();
                                                });
                                              },
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              activeColor: Colors.green,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () {
          clearControllers();
          showBottomSht1(false);
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
