import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignment/controller/product_controller.dart';

import 'package:provider/provider.dart';

class DisplayProduct extends StatefulWidget {
  const DisplayProduct({super.key});

  @override
  State<DisplayProduct> createState() => _DisplayProductState();
}

class _DisplayProductState extends State<DisplayProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Product"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          child: Container(
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  Provider.of<ProductController>(context).obj!.productImage!,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(Provider.of<ProductController>(context).obj!.productName!),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "${Provider.of<ProductController>(context).obj!.productPrice!}"),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Consumer(builder: ((context, value, child) {
                      return GestureDetector(
                          onTap: () {
                            Provider.of<ProductController>(context,
                                    listen: false)
                                .changeFavourite();
                          },
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: (Provider.of<ProductController>(context)
                                    .obj!
                                    .isFavourite)
                                ? Colors.red
                                : Colors.black,
                          ));
                    })),
                    SizedBox(
                      width: 170,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Provider.of<ProductController>(context,
                                    listen: false)
                                .decrementquatity();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                            child: Center(
                              child: Icon(Icons.remove),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Consumer(builder: (context, value, child) {
                          return Text(
                            "${Provider.of<ProductController>(context, listen: false).obj!.quantity}",
                            style: TextStyle(fontSize: 20),
                          );
                        }),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Provider.of<ProductController>(context,
                                    listen: false)
                                .incrementquantity();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
