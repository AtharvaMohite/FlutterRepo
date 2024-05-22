import 'package:challenge_2/new_screen.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen2(),
    );
  }
}

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
        appBar: AppBar(
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            size: 26,
            color: Colors.black,
          ),
          actions: const [
            Icon(
              Icons.notifications_none,
              size: 26,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            )
          ],
          backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
          toolbarHeight: 50,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to New",
                    style: GoogleFonts.jost(
                        fontSize: 39, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Educourse",
                    style: GoogleFonts.jost(
                        fontSize: 37, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,

              padding: const EdgeInsets.symmetric(horizontal: 20),
              // margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your Keyword",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.5))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(38),
                        topRight: Radius.circular(38))),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            height: 242,
                            width: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: const LinearGradient(
                                    transform: GradientRotation(90),
                                    colors: [
                                      Color.fromRGBO(197, 4, 98, 1),
                                      Color.fromRGBO(80, 3, 112, 1)
                                    ])),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "UX Designer from.",
                                        style: GoogleFonts.jost(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Scratch.",
                                        style: GoogleFonts.jost(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Image.asset("assets/7010826_3255307.png")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            //margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 242,
                            width: 190,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                gradient: const LinearGradient(
                                    transform: GradientRotation(90),
                                    colors: [
                                      Color.fromRGBO(0, 77, 228, 1),
                                      Color.fromRGBO(1, 47, 135, 1)
                                    ])),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "UX Designer from.",
                                        style: GoogleFonts.jost(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Scratch.",
                                        style: GoogleFonts.jost(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Image.asset("assets/Objects.png")
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Course By Category",
                        style: GoogleFonts.jost(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child: Image.asset("assets/Traced Image.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "UI/UX",
                                style: GoogleFonts.jost(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child: Image.asset("assets/Vector.png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("VISUAL",
                                  style: GoogleFonts.jost(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child:
                                    Image.asset("assets/Traced Image (1).png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("ILLUSTRATION",
                                  style: GoogleFonts.jost(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color.fromRGBO(25, 0, 56, 1)),
                                child:
                                    Image.asset("assets/Traced Image (3).png"),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text("PHOTO",
                                  style: GoogleFonts.jost(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
