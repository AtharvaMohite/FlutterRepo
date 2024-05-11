// import 'package:calorie_tracker_2/ListOfFoods.dart';
// import 'package:calorie_tracker_2/fooddiscription.dart';
import 'package:flutter/material.dart';
import 'foodlist.dart';
import "database.dart";
import 'main.dart';
import 'package:intl/intl.dart';

class Search extends StatefulWidget {
  final String title;
  const Search({super.key, required this.title});

  @override
  State<Search> createState() {
    return _SearchState();
  }
}

class _SearchState extends State<Search> {
  // void insertlist() async {
  //   for (int i = 0; i < FoodList.flist.length; i++) {
  //     await Database1.insertDB("foodlist123", FoodList.flist[i]);
  //   }
  // }

  // Info obj = Info();
  List items = [];
  List nametoList() {
    List names = [];
    for (int i = 0; i < FoodList.flist.length; i++) {
      names.add(FoodList.flist[i]);
    }
    return names;
  }

  final TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    // insertlist();
    //aaddtolist();
    items = nametoList();
  }

  // void printl() async {
  //   noway = await Database1.getData1233("foodlist123");
  // }

  //List noway = [];
  // void aaddtolist() async {
  //   noway = await Database1.getData("foodlist123");

  //   setState(() {});
  // }

  void searchlist(String item) {
    if (item.isEmpty) {
      //items = [];
    } else {
      items = nametoList()
          .where((element) =>
              element.name.toLowerCase().contains(item.toLowerCase()))
          .toList();
    }
    print(items[1].name);
    setState(() {});
  }

  TextEditingController controller = TextEditingController(text: "1");
  void showBtmsheet(int index) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(21, 197, 89, 0.263),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 35),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Nutrition facts",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 25, bottom: 15),
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 10, left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(44, 22, 177, 81),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Text(
                              "${FoodList.flist[index].name}",
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Calories ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                                const Spacer(),
                                Text(
                                  "${FoodList.flist[index].calories} cals",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Protein ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                                const Spacer(),
                                Text(
                                  "${FoodList.flist[index].protein} g",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Carbohydrates ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                                const Spacer(),
                                Text(
                                  "${FoodList.flist[index].carbohydrates} g",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Row(
                              children: [
                                const Text(
                                  "Fats ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                                const Spacer(),
                                Text(
                                  "${FoodList.flist[index].fat} g",
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Quantity")),
                    ),
                    Row(
                      children: [
                        TextField(
                          controller: controller,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            constraints: const BoxConstraints(
                                maxHeight: 90, maxWidth: 70),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black38,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: ElevatedButton(
                              onPressed: () async {
                                FoodList.flist[index].servings =
                                    int.parse(controller.text);
                                FoodList.flist[index].date = todaysdate();
                                if (widget.title.toLowerCase() == "breakfast") {
                                  await Database1.insertDB(
                                      "breakfastTable", FoodList.flist[index]);
                                } else if (widget.title.toLowerCase() ==
                                    "lunch") {
                                  FoodList.flist[index].servings =
                                      int.parse(controller.text);
                                  await Database1.insertDB(
                                      "lunchTable", FoodList.flist[index]);
                                } else {
                                  FoodList.flist[index].servings =
                                      int.parse(controller.text);
                                  await Database1.insertDB(
                                      "dinnerTable", FoodList.flist[index]);
                                }

                                // ignore: use_build_context_synchronously
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MyHomePage();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(200, 70)),
                              child: const Text("Add")),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  String todaysdate() {
    DateTime date = DateTime.now();
    String formate = DateFormat.yMMMd().format(date);
    return formate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
            onPressed: () {
              // print(nametoList());
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: IconButton(
                      onPressed: () {
                        // print("${FoodList.flist[0].servings}");
                        //print(items[0]);
                        //print(items[0].name);
                        // printl();
                        //S print(noway);
                        print("itemss = ${items[1].name}");
                        print(todaysdate());
                      },
                      icon: const Icon(Icons.search_rounded)),
                ),
                onChanged: (value) => searchlist(searchController.text),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    items[index].name,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "(${items[index].calories.toString()})",
                                    style: const TextStyle(
                                        fontSize: 15, color: Colors.black45),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    showBtmsheet(index);

                                    setState(() {
                                      controller.clear();
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    size: 27,
                                  ))
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
