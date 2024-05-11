import 'package:calorie_tracker_2/search_screen.dart';
import 'package:flutter/material.dart';

import 'foodlist.dart';
import "database.dart";
import "package:intl/intl.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Database1.openDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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

// class Fooditem {
//   String foodType;
//   String foodname;
//   int cals;

//   Fooditem({
//     required this.foodType,
//     required this.foodname,
//     required this.cals,
//   });
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double add(List beak, List lucnh, List dinner) {
    double breakcal = 0;
    double luchcal = 0;
    double dinnercal = 0;
    // double sum = 0;
    for (int i = 0; i < beak.length; i++) {
      breakcal += beak[i].calories * beak[i].servings;
    }
    for (int i = 0; i < lucnh.length; i++) {
      luchcal += lucnh[i].calories * lucnh[i].servings;
    }
    for (int i = 0; i < dinner.length; i++) {
      dinnercal += dinner[i].calories * dinner[i].servings;
    }

    return breakcal + luchcal + dinnercal;
  }

  double remaining() {
    double rem = info.remaining - add(breakfast, lunch, diner);
    return rem;
  }

  // List llll = BreakFastList.breakfastlist;
  // List lunch = BreakFastList.lunchlist;
  // List diner = BreakFastList.dinnerlist;

  List breakfast = [];
  List lunch = [];
  List diner = [];

  @override
  void initState() {
    super.initState();

    addtolist();
    sortLists();
  }

  String setdate() {
    DateTime date1 = DateTime.now();
    String formate = DateFormat.yMMMd().format(date1);

    return formate;
    // print("date == $date");
    // print(formate);
  }

  void addtolist() async {
    breakfast = await Database1.getData("breakfastTable");
    lunch = await Database1.getData("lunchTable");
    diner = await Database1.getData("dinnerTable");

    setState(() {});
  }

  void sortLists() async {
    await breakfast.where(
      (element) {
        print("element.date");
        return element.date == date!;
      },
    );
  }

  Text setText(int index) {
    return Text(
      breakfast[index].name,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    );
  }

  Text setTextlunch(int index) {
    return Text(
      lunch[index].name,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    );
  }

  Text setTextDinner(int index) {
    return Text(
      diner[index].name,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
    );
  }

  Info info = Info();
  // double remainingcals() {
  //   if (info.remaining < 0) {
  //     return 0;
  //   } else {
  //     return info.remaining;
  //   }
  // }

  // double setrem() {
  //   double remain = info.remaining;
  //   return remain;
  // }

  // double seteaten() {
  //   double eaten = info.calseaten;
  //   return eaten;
  // }

  String? date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 204, 150, 1),
        title: const Text(
          "Calorie Tracker",
          style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              print(lunch[0].date);
              print("date ${date}");
              print(breakfast[0].date);
            },
            child: Text(
              date != null ? date! : setdate(),
              style: const TextStyle(color: Colors.white),
            ),
          ),
          // SizedBox(
          //   width: ,
          // ),
          IconButton(
            onPressed: () async {
              //print(add(breakfast, lunch, diner));
              //setdate();

              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2024),
                  lastDate: DateTime(2025));

              if (pickeddate != null) {
                String formate = DateFormat.yMMMd().format(pickeddate);
                setState(() {
                  date = formate;
                });
              }

              // addtolist();
              //print("breakfast ===== $breakfast");
              setState(() {});
              //  print(FoodList.flist[0]["chapati"]);
            },
            icon: const Icon(
              Icons.calendar_today,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 5),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 204, 150, 1),
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Eaten",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "${add(breakfast, lunch, diner)} cals",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Remaining",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "${remaining()} cals",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Container(
                //   margin: const EdgeInsets.only(bottom: 50),
                //   height: 200,
                //   width: 200,
                //   child: Image.asset(
                //     "Images/apple-removebg-preview.png",
                //     fit: BoxFit.contain,
                //   ),
                // )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 5),
                            blurRadius: 15,
                            spreadRadius: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Breakfast",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const Search(
                                            title: "Breakfast",
                                          );
                                        }));
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 30,
                                    ))
                              ],
                            ),
                          ),
                          //const SizedBox(height: 20),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: breakfast.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                // height: 50,
                                color: Colors.white,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10.0),
                                            child: (breakfast[index].date ==
                                                    setdate())
                                                ? setText(index)
                                                : null),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: (breakfast[index].date ==
                                                  setdate())
                                              ? Text(
                                                  "${breakfast[index].servings} servings (${breakfast[index].calories}g)",
                                                  style: TextStyle(
                                                      color: Colors.black45),
                                                )
                                              : null,
                                        )
                                      ],
                                    ),

                                    const Spacer(),
                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(
                                    //       vertical: 5, horizontal: 10.0),
                                    //   child: Text(
                                    //     "${foodList[index].cals.toString()} cals",
                                    //     style: const TextStyle(
                                    //         fontSize: 17,
                                    //         fontWeight: FontWeight.w500),
                                    //   ),
                                    // ),
                                    // IconButton(
                                    //   icon: const Icon(Icons.close_rounded),
                                    //   onPressed: () {
                                    //     setState(() {
                                    //       BreakFastList.breakfastlist
                                    //           .removeAt(index);
                                    //     });
                                    //   },
                                    // )

                                    SizedBox(
                                      child: (breakfast[index].date ==
                                              setdate())
                                          ? Text(
                                              "${breakfast[index].calories * breakfast[index].servings} cals")
                                          : null,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 5),
                            blurRadius: 15,
                            spreadRadius: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Lunch",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const Search(
                                            title: "Lunch",
                                          );
                                        }));
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 30,
                                    ))
                              ],
                            ),
                          ),
                          //const SizedBox(height: 20),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: lunch.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                // height: 50,
                                color: Colors.white,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10.0),
                                            child:
                                                (lunch[index].date == setdate())
                                                    ? setText(index)
                                                    : null),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: (lunch[index].date ==
                                                  setdate())
                                              ? Text(
                                                  "${lunch[index].servings} servings (${lunch[index].calories}g)",
                                                  style: TextStyle(
                                                      color: Colors.black45),
                                                )
                                              : null,
                                        )
                                      ],
                                    ),

                                    const Spacer(),
                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(
                                    //       vertical: 5, horizontal: 10.0),
                                    //   child: Text(
                                    //     "${foodList[index].cals.toString()} cals",
                                    //     style: const TextStyle(
                                    //         fontSize: 17,
                                    //         fontWeight: FontWeight.w500),
                                    //   ),
                                    // ),
                                    // IconButton(
                                    //   icon: const Icon(Icons.close_rounded),
                                    //   onPressed: () {
                                    //     setState(() {
                                    //       BreakFastList.breakfastlist
                                    //           .removeAt(index);
                                    //     });
                                    //   },
                                    // )

                                    SizedBox(
                                      child: (lunch[index].date == setdate())
                                          ? Text(
                                              "${lunch[index].calories * lunch[index].servings} cals")
                                          : null,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 5),
                            blurRadius: 15,
                            spreadRadius: 1,
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Dinner",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const Search(
                                            title: "Dinner",
                                          );
                                        }));
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 30,
                                    ))
                              ],
                            ),
                          ),
                          //const SizedBox(height: 20),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: diner.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(bottom: 15),
                                // height: 50,
                                color: Colors.white,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10.0),
                                            child:
                                                (diner[index].date == setdate())
                                                    ? setText(index)
                                                    : null),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: (diner[index].date ==
                                                  setdate())
                                              ? Text(
                                                  "${diner[index].servings} servings (${diner[index].calories}g)",
                                                  style: TextStyle(
                                                      color: Colors.black45),
                                                )
                                              : null,
                                        )
                                      ],
                                    ),

                                    const Spacer(),
                                    // Padding(
                                    //   padding: const EdgeInsets.symmetric(
                                    //       vertical: 5, horizontal: 10.0),
                                    //   child: Text(
                                    //     "${foodList[index].cals.toString()} cals",
                                    //     style: const TextStyle(
                                    //         fontSize: 17,
                                    //         fontWeight: FontWeight.w500),
                                    //   ),
                                    // ),
                                    // IconButton(
                                    //   icon: const Icon(Icons.close_rounded),
                                    //   onPressed: () {
                                    //     setState(() {
                                    //       BreakFastList.breakfastlist
                                    //           .removeAt(index);
                                    //     });
                                    //   },
                                    // )

                                    SizedBox(
                                      child: (diner[index].date == setdate())
                                          ? Text(
                                              "${diner[index].calories * diner[index].servings} cals")
                                          : null,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    )
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
