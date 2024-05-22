import 'package:challenge_ui/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Image.asset("assets/Mask group.png")],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 176,
                    margin: EdgeInsets.only(top: 20, left: 20),
                    child: Text(
                      "Find your\nfavorite plants",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 16.1,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ]),
                    child: Image.asset("assets/shopping-bag.png"),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(top: 26, left: 27),
                height: 108,
                width: 310,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(204, 231, 185, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30% OFF",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "02-23 April",
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, right: 40),
                      child: Image.asset(
                        "assets/Group 5318.png",
                        height: 90,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(62, 102, 24, 1)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(197, 214, 181, 1)),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(197, 214, 181, 1)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, bottom: 13),
                child: Text(
                  "Indoor",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 188,
                      width: 141,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 16.1,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                              "assets/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                          Row(
                            children: [
                              SizedBox(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Snake Plants",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13.16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "₹350",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Container(
                                height: 26,
                                width: 26,
                                margin: EdgeInsets.only(top: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 16.1,
                                          color: Color.fromRGBO(0, 0, 0, 0.15))
                                    ]),
                                child: Image.asset("assets/shopping-bag.png"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 188,
                      width: 141,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 16.1,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                              "assets/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                          Row(
                            children: [
                              SizedBox(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Snake Plants",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13.16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "₹350",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Container(
                                height: 26,
                                width: 26,
                                margin: EdgeInsets.only(top: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 16.1,
                                          color: Color.fromRGBO(0, 0, 0, 0.15))
                                    ]),
                                child: Image.asset("assets/shopping-bag.png"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Color.fromRGBO(204, 211, 196, 1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, bottom: 13),
                child: Text(
                  "Outdoor",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const DetailsPage();
                          }));
                        });
                      },
                      child: Container(
                        height: 188,
                        width: 141,
                        margin: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 16.1,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                                "assets/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                            Row(
                              children: [
                                SizedBox(
                                  width: 14,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Snake Plants",
                                      style: GoogleFonts.poppins(
                                          fontSize: 13.16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "₹350",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.5,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 26,
                                  width: 26,
                                  margin: EdgeInsets.only(top: 25),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            offset: Offset(0, 4),
                                            blurRadius: 16.1,
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.15))
                                      ]),
                                  child: Image.asset("assets/shopping-bag.png"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 188,
                      width: 141,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 16.1,
                              color: Color.fromRGBO(0, 0, 0, 0.15))
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                              "assets/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png"),
                          Row(
                            children: [
                              SizedBox(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Snake Plants",
                                    style: GoogleFonts.poppins(
                                        fontSize: 13.16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "₹350",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.5,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Container(
                                height: 26,
                                width: 26,
                                margin: EdgeInsets.only(top: 25),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 16.1,
                                          color: Color.fromRGBO(0, 0, 0, 0.15))
                                    ]),
                                child: Image.asset("assets/shopping-bag.png"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
