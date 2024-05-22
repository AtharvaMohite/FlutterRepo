import 'package:flutter/material.dart';

class Flag2 extends StatefulWidget {
  State<Flag2> createState() => Flag2State();
}

class Flag2State extends State<Flag2> {
  int count = -1;

  Widget kati() {
    return Container(
      height: 500,
      width: 20,
      color: Colors.black,
    );
  }

  Widget Obox() {
    return Container(
      height: 80,
      width: 300,
      color: Colors.orange,
    );
  }

  Widget Wbox() {
    return Container(
        height: 80,
        width: 300,
        color: Colors.white,
        child: count >= 3
            ? Image.asset("assets/Images/ashokChakra.jpg")
            : Container());
  }

  Widget Gbox() {
    return Container(
      height: 80,
      width: 300,
      color: Colors.green,
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bharat"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("Add"),
        ),
        body: Column(
          children: [
            Container(
                height: 500,
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (count >= 0) ? kati() : Container(),
                    Column(
                      children: [
                        (count >= 1) ? Obox() : Container(),
                        (count >= 2) ? Wbox() : Container(),
                        (count >= 4) ? Gbox() : Container(),
                      ],
                    )
                  ],
                )),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = -1;
                  });
                },
                child: Text("Reset"))
          ],
        ));
  }
}
