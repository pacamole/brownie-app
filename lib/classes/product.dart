class Product {
  final String name;
  double sellingPrice;
  List<String> ingredients;
  late DateTime date;
  String image;

  Product({
    required this.name,
    required this.sellingPrice,
    required this.ingredients,
    date,
    required this.image,
  }) {
    this.date = date ?? DateTime.now();
  }
}
