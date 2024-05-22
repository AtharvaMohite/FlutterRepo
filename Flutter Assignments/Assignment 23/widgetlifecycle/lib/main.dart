import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() {
    print("in CreateState");
    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  bool boxC = false;
  bool ispree = false;
  @override
  void initState() {
    super.initState();
    print("in ininState");
  }

  void didChangedDependencies() {
    super.didChangeDependencies();
    print("in didChangedDependencies");
  }

  @override
  void didUpdateWidget(Widget old) {
    super.didUpdateWidget(const MyWidget());
    print("in didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("in deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("in dispose");
  }

  Scaffold sss() {
    if (ispree == false) {
      return Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: (boxC) ? Colors.red : Colors.amber,
              ),
              const SizedBox(
                height: 30,
              ),
              Text("data"),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print("in setState");
                      boxC = !boxC;
                    });
                  },
                  child: const Text("Button 2")),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print("in setState2");
                      ispree = true;
                    });
                  },
                  child: const Text("Button"))
            ],
          ),
        ),
      );
    } else {
      return const Scaffold(
          body: Center(
        child: Text("helllo "),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    print("in build()");
    return sss();
  }
}
