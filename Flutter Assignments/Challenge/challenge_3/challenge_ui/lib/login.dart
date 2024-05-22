import 'package:challenge_ui/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginpageState();
}

class _LoginpageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          "assets/Group 5314.png",
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Log in",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 30),
              ),
              SizedBox(
                height: 75,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  // height: 50,
                  // width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Mobile Number",
                        hintStyle: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(204, 211, 196, 1),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 15),
                          child: const Icon(
                            Icons.phone,
                            color: const Color.fromRGBO(204, 211, 196, 1),
                          ),
                        ),
                        constraints:
                            BoxConstraints(maxHeight: 50, maxWidth: 320),
                        contentPadding: EdgeInsets.only(top: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(204, 211, 196, 1),
                                width: 1))),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
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
                            return const Verificationpage();
                          }));
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(320, 50),
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Text("Log in"))),
              SizedBox(
                height: 70,
              ),
              Image.asset("assets/Group 5315.png"),
            ],
          ),
        )
      ]),
    );
  }
}
