import 'package:flutter/material.dart';
import 'package:textfield_app/mainApp.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TextList());
  }
}

class TextList extends StatefulWidget {
  const TextList({super.key});

  @override
  State<TextList> createState() => _TextListState();
}

class _TextListState extends State<TextList> {
  List<String> textInput = [];
  final TextEditingController _nameTextController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  String aaa = '';
  void clearText() {
    _nameTextController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo List",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: TextField(
              controller: _nameTextController,
              focusNode: _focusNode,
              decoration: InputDecoration(
                hintText: "Enter your name ",
                border: InputBorder.none,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.pink,
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      textInput.add(_nameTextController.text);
                      _nameTextController.clear();
                    });
                  },
                  padding: EdgeInsets.only(right: 10),
                  icon: const Icon(
                    Icons.send,
                  ),
                ),
              ),
              textInputAction: TextInputAction.done,
              onChanged: (value) => print("Value = $value"),
              onSubmitted: (value) => print("Submitted  : $value"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            //width: double.infinity,
            child: ListView.builder(
              itemCount: textInput.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 40,
                  color: Colors.amber,
                  child: Text(textInput[index]),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          if (_nameTextController != "") {
            textInput.add(_nameTextController.text);
            _nameTextController.clear();
          }
        });
      }),
    );
  }
}
