import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignment/controller/product_controller.dart';
import 'package:inheritedwidget_assignment/model/product_model.dart';
import 'package:inheritedwidget_assignment/view/product_display_screen.dart';
import 'package:provider/provider.dart';

class GetProductDetails extends StatelessWidget {
  const GetProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                  width: 300,
                  child: TextField(
                    controller: _imageController,
                    decoration: InputDecoration(
                        hintText: "Enter image url",
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 70,
                  width: 300,
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        hintText: "Enter name", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 70,
                  width: 300,
                  child: TextField(
                    controller: _priceController,
                    decoration: InputDecoration(
                        hintText: "Enter price", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Provider.of<ProductController>(context, listen: false)
                        .addProduct(ProductModel(
                      productImage: _imageController.text,
                      productPrice: double.parse(_priceController.text),
                      productName: _nameController.text,
                    ));

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DisplayProduct();
                    }));
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Center(
                      child: Text("Submit"),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
