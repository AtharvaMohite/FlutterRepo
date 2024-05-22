import 'package:flutter/material.dart';

void main() => runApp(const MainApp1());

class MainApp1 extends StatelessWidget {
  const MainApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: TodoCard());
  }
}

class TodoCard extends StatefulWidget {
  const TodoCard({super.key});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  List card = [
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
  ];
  List task = [
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
  ];

  List colorss = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromARGB(255, 231, 237, 255),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("To-do list")),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: ListView.builder(
            itemCount: card.length,
            itemBuilder: (context, index) {
              return Container(
                width: 330,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                          spreadRadius: 1)
                    ],
                    color: colorss[index],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 20,
                            right: 20,
                          ),
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.network("assets/Group 42.png"),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 15,
                                  width: 243,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    card[index],
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: 243,
                                  child: Text(
                                    task[index],
                                    style: const TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: const Text(
                              "10 July 2023",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            )),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              size: 16,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete_outline_outlined,
                              size: 16,
                            )),
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  // height: 500,
                  // width: 600,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Text("Create Task"),
                      const SizedBox(
                        height: 50,
                      ),
                      const Row(
                        children: [
                          Column(
                            children: [
                              Text("Hello"),
                              TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Colors.black)),
                                    hintText: "Enter Title",
                                    constraints: BoxConstraints(
                                        maxHeight: 50, maxWidth: 300)),
                              )
                            ],
                          )
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Submit"))
                    ],
                  ),
                );
              },
            );
          },
          child: const Icon(Icons.add)),
    );
  }
}
