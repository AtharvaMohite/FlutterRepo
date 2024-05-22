import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignment/controller/product_controller.dart';
import 'package:inheritedwidget_assignment/model/product_model.dart';
import 'package:inheritedwidget_assignment/view/product_detail_screen.dart';
import 'package:provider/provider.dart';
import "dart:developer";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ProductController(obj: ProductModel());
      },
      child: const MaterialApp(
        home: ShoppingDemo(),
      ),
    );
  }
}

class ShoppingDemo extends StatefulWidget {
  const ShoppingDemo({super.key});

  @override
  State<ShoppingDemo> createState() => _ShoppingDemoState();
}

class _ShoppingDemoState extends State<ShoppingDemo> {
  @override
  Widget build(BuildContext context) {
    return GetProductDetails();
  }
}
