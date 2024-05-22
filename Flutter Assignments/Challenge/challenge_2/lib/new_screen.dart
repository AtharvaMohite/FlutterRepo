import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // transform: GradientRotation(45),

            stops: [00.01, 0.47],
            colors: [
              Color.fromRGBO(197, 4, 98, 1),
              Color.fromRGBO(80, 3, 112, 1)
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 26,
              ),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "UX Designer from Scratch.",
                    style: GoogleFonts.jost(
                        fontSize: 33,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Basic guideline & tips & tricks for how to become a UX designer easily.",
                    style: GoogleFonts.jost(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(228, 205, 225, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 34,
                  child: Row(
                    children: [
                      Container(
                        height: 34,
                        width: 34,
                        margin: EdgeInsets.only(left: 37),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 82, 178, 1),
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.white)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Author: ",
                        style: GoogleFonts.jost(
                            color: Color.fromRGBO(190, 154, 197, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Jenny",
                        style: GoogleFonts.jost(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
