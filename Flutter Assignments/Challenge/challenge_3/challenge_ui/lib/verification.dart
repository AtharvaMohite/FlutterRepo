import 'package:challenge_ui/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verificationpage extends StatefulWidget {
  const Verificationpage({super.key});

  @override
  State<Verificationpage> createState() => _VerificationpageState();
}

class _VerificationpageState extends State<Verificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 247, 248, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Image.asset("assets/Group 5314 (1).png")],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  "Verification",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 272,
                margin: EdgeInsets.only(left: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter the OTP code from the phone we\njust sent you",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromRGBO(0, 0, 0, 0.6)),
                      )
                    ]),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(204, 211, 196, 1))),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(204, 211, 196, 1))),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(204, 211, 196, 1))),
                  ),
                  Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: Color.fromRGBO(204, 211, 196, 1))),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Don’t receive OTP code! ",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                    Text(
                      "Resend",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    // margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        boxShadow: [
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
                              return const Homepage();
                            }));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(320, 50),
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                        ),
                        child: const Text("Submit"))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
