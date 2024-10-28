class Product {
  final String name;
  late double sellingPrice;
  List<String> ingredients;

  Product({
    required this.name,
    required this.sellingPrice,
    required this.ingredients,
  }) {
    sellingPrice = 7;
  }
}
