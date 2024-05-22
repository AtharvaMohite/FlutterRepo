import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist_modified/view/todo_display_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _loginKey = GlobalKey();

  // List username = ["Atharva", "Aditya"];
  // List password = ["123", "345"];
  // bool isUser(String username1, String password1) {
  //   for (int i = 0; i < username.length; i++) {
  //     if (username[i] == username1.trim() && password[i] == password1.trim()) {
  //       return true;
  //     }
  //   }
  //   return false;
  // }

  bool isUserfun2(String username2, String password2) {
    String pswd = username2 + "123";
    return (pswd == password2) ? true : false;
    // return false;
  }

  Future loginSubmit(String u) async {
    // await SqfliteDB.insertDB(Login1(username: u));
  }

  @override
  void initState() {
    print("init state login");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(111, 81, 255, 1),
          title: const Text("Welcome "),
        ),
        body: Form(
          key: _loginKey,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(width: 200, height: 200, "assets/295128.png"),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 60),
                    child: TextFormField(
                      controller: _usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Username";
                        } else if (value.isNotEmpty &&
                            isUserfun2(_usernameController.text,
                                    _passwordController.text) ==
                                false) {
                          return "Enter Correct Username";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          suffix: Icon(Icons.person),
                          label: const Text(
                            "Enter Username",
                            style: TextStyle(
                              fontSize: 15,
                              //color: Color.fromRGBO(111, 81, 255, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color.fromRGBO(111, 81, 255, 1),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromRGBO(111, 81, 255, 1)),
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
                      obscureText: true,
                      obscuringCharacter: "*",
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter Password";
                        } else if (value.isNotEmpty &&
                            isUserfun2(_usernameController.text,
                                    _passwordController.text) ==
                                false) {
                          return "Enter Correct Password";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          suffix: Icon(Icons.lock),
                          label: const Text(
                            "Enter Password",
                            style: TextStyle(
                              fontSize: 15,
                              //  color: Color.fromRGBO(111, 81, 255, 1),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromRGBO(111, 81, 255, 1)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 2,
                                color: Color.fromRGBO(111, 81, 255, 1)),
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
                          backgroundColor:
                              const Color.fromRGBO(205, 218, 218, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(23)),
                          fixedSize: const Size(150, 50)),
                      onPressed: () async {
                        bool isLogin = _loginKey.currentState!.validate();
                        isUserfun2(
                            _usernameController.text, _passwordController.text);
                        if (isLogin) {
                          if (isUserfun2(_usernameController.text,
                                  _passwordController.text) ==
                              true) {
                            loginSubmit(_usernameController.text);
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Login successful")));
                            // SqfliteDB.insertDB(
                            //     Login1(username: _usernameController.text));

                            setState(() {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return const TodoScreen();
                                },
                              ));
                            });
                          }
                        } else if (_usernameController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty &&
                            isUserfun2(_usernameController.text,
                                    _passwordController.text) ==
                                false) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("User not found")));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Login failed")));
                        }
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.quando(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 17),
                      )),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
