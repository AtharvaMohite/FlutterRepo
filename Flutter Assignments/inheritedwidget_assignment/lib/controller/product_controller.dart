import 'package:flutter/material.dart';
import 'package:inheritedwidget_assignment/model/product_model.dart';

class ProductController with ChangeNotifier {
  ProductModel? obj;

  ProductController({required this.obj});

  void addProduct(ProductModel obj) {
    this.obj = obj;
    notifyListeners();
  }

  void changeFavourite() {
    obj!.isFavourite = !obj!.isFavourite;
    notifyListeners();
  }

  void incrementquantity() {
    obj!.quantity = ++obj!.quantity;
    notifyListeners();
  }

  void decrementquatity() {
    obj!.quantity = --obj!.quantity;
    notifyListeners();
  }
}
