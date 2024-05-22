class ProductModel {
  String? productImage;
  String? productName;
  double? productPrice;
  bool isFavourite;
  int quantity;

  ProductModel(
      {this.productImage,
      this.productName,
      this.productPrice,
      this.isFavourite = false,
      this.quantity = 0});
}
