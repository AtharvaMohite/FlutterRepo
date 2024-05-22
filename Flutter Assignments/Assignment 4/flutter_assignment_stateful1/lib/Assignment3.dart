import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});
  State<Assignment3> createState() => _Assignment3State();
}

class _Assignment3State extends State<Assignment3> {
  int? selectedIndex = 0;
  final List<String> imageList = [
    "https://images.unsplash.com/photo-1703982924533-22c9f7f34624?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1699555731212-89243b33a3b7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHx8"
  ];
  void ShowNextImage() {
    if (selectedIndex! < imageList.length - 1) {
      setState(() {
        {
          {
            selectedIndex = selectedIndex! + 1;
          }
        }
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Display Images")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageList[selectedIndex!],
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: ShowNextImage, child: const Text("Next")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: const Text("Reset"),
          ),
        ],
      )),
    );
  }
}
