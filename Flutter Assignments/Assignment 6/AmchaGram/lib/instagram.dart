import "package:flutter/material.dart";

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  bool box1 = false;
  bool box2 = false;
  bool box3 = false;
  bool box4 = false;
  bool isBM1liked = false;
  bool isBM2liked = false;
  bool isBM3liked = false;
  bool isBM4liked = false;
  int count = -1;

  List<String> Images = [
    "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8"
        "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Amchagram",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: Colors.black, fontSize: 30),
          ),
          actions: const [
            Icon(
              Icons.favorite_outline_outlined,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.message_sharp,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              color: Colors.white,
                              border: Border.all(width: 3, color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150))),
                          alignment: Alignment.bottomRight,
                          child: Row(children: [
                            Container(
                              height: 25,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    width: 1.5,
                                    color: Colors.white,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(150))),
                              margin: EdgeInsets.only(top: 33, left: 39),
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ]),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: const Text("Your Story"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          height: 70,
                          width: 70,
                          // padding: EdgeInsets.all(
                          //   10,
                          // ),

                          decoration: BoxDecoration(

                              //color: Colors.black,
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Colors.deepOrangeAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: const Text("Others Story"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Colors.deepOrangeAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: const Text("Others Story"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Colors.deepOrangeAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: const Text("Others Story"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Colors.deepOrangeAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: const Text("Others Story"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, bottom: 10, right: 20),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              //color: Colors.black,
                              color: Colors.white,
                              border: Border.all(
                                  width: 3, color: Colors.deepOrangeAccent),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(150))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: const Text("Others Story"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    color: Colors.white,
                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
                      width: double.infinity,
                      height: 300,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            box1 = !box1;
                          });
                        },
                        icon: Icon(box1
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined),
                        color: box1 ? Colors.red : Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          )),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isBM1liked = !isBM1liked;
                          });
                        },
                        icon: Icon(isBM1liked
                            ? Icons.bookmark_add_rounded
                            : Icons.bookmark_outline_outlined),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    color: Colors.transparent,
                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
                      width: double.infinity,
                      height: 300,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            box2 = !box2;
                          });
                        },
                        icon: Icon(box2
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined),
                        color: box2 ? Colors.red : Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          )),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isBM2liked = !isBM2liked;
                          });
                        },
                        icon: Icon(isBM2liked
                            ? Icons.bookmark_add_rounded
                            : Icons.bookmark_outline_outlined),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    color: Colors.transparent,
                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
                      width: double.infinity,
                      height: 300,
                    ),
                  ),

                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            box3 = !box3;
                          });
                        },
                        icon: Icon(box3
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined),
                        color: box3 ? Colors.red : Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          )),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isBM3liked = !isBM3liked;
                          });
                        },
                        icon: Icon(isBM3liked
                            ? Icons.bookmark_add_rounded
                            : Icons.bookmark_outline_outlined),
                      ),
                    ],
                  ),

                  //Dusra mulga
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    color: Colors.transparent,
                    child: Image.network(
                      "https://plus.unsplash.com/premium_photo-1675147924852-69f8060a9acc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8",
                      width: double.infinity,
                      height: 300,
                    ),
                  ),

                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            box4 = !box4;
                          });
                        },
                        icon: Icon(box4
                            ? Icons.favorite_rounded
                            : Icons.favorite_outline_outlined),
                        color: box4 ? Colors.red : Colors.black,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                          )),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isBM4liked = !isBM4liked;
                          });
                        },
                        icon: Icon(isBM4liked
                            ? Icons.bookmark_add_rounded
                            : Icons.bookmark_outline_outlined),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  //Dusra mulga
                ],
              )
            ],
          ),
        ));
  }
}
