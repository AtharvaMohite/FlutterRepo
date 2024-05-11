import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // textTheme: TextTheme(bodySmall: TextStyle(color: Colors.white)),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class Fooditem {
  String foodType;
  String foodname;
  int cals;

  Fooditem(
      {required this.foodType, required this.foodname, required this.cals});
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Fooditem> foodList = [
    Fooditem(foodType: "Breakfast", foodname: "Chapati", cals: 120),
    Fooditem(foodType: "Breakfast", foodname: "Chapati", cals: 120),
    Fooditem(foodType: "Breakfast", foodname: "Chapati", cals: 120)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 204, 150, 1),
        title: const Text(
          "Calorie Tracker",
          style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.calendar_today,
                color: Colors.white,
              )),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(0, 204, 150, 1)),
            child: Row(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 35),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Eaten",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "0 cals",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Remaining",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "2050 cals",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ]),
                Container(
                  margin: const EdgeInsets.only(bottom: 50),
                  height: 215,
                  width: 215,
                  child: Image.asset(
                    "Images/apple-removebg-preview.png",
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration:
                          const BoxDecoration(color: Colors.black, boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 3),
                            blurRadius: 10,
                            spreadRadius: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1))
                      ]),
                      child: Container(
                        //  height: double.,
                        padding: EdgeInsets.all(10),
                        child: Column(children: [
                          Text("data"),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: foodList.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                      height: 50, color: Colors.red);
                                }),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
