import 'package:challenge_ui/login.dart';
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
        debugShowCheckedModeBanner: false, home: GetStarted());
  }
}

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 44,
        ),
        Image.asset("assets/image 2.png"),
        Container(
          width: 249,
          margin: const EdgeInsets.only(left: 56.56),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Enjoy your",
              style: GoogleFonts.poppins(
                fontSize: 34.22,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(47, 47, 47, 1),
              ),
            ),
            Row(
              children: [
                Text(
                  "life with",
                  style: GoogleFonts.poppins(
                    fontSize: 34.22,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(47, 47, 47, 1),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Plants",
                  style: GoogleFonts.poppins(
                    fontSize: 34.22,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(47, 47, 47, 1),
                  ),
                ),
              ],
            ),
          ]),
        ),
        const SizedBox(
          height: 50,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 20),
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 40,
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(124, 180, 70, 1),
                      Color.fromRGBO(62, 102, 24, 1),
                    ])),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  });
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  fixedSize: const Size(320, 50),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 92,
                    top: 15,
                    bottom: 15,
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started ",
                        style: GoogleFonts.rubik(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      )
                    ],
                  ),
                )),
          ),
        )
      ]),
    );
  }
}
