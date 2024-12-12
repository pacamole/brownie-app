import 'package:brownie_app/classes/product.dart';
import 'package:brownie_app/widgets/sales_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Product brownie = Product(
    name: "Brownie",
    sellingPrice: 7,
    ingredients: ["Açúcar", "Trigo", "Achocolatado", "Ovo", "Manteiga"],
    image: "lib\\images\\brownie.jpeg",
  );

  List<Product> listOfSales = <Product>[
    Product(
        name: "Teste",
        sellingPrice: 7,
        ingredients: ["Açúcar", "Trigo", "Achocolatado", "Ovo", "Manteiga"],
        image: "lib\\images\\brownie.jpeg",
        date: DateTime.now().subtract(const Duration(days: 2)))
  ];
  int productsToSell = 12;

  void newSell() {
    setState(() {
      listOfSales.add(brownie);
    });
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppBar = AppBar(
      backgroundColor: Theme.of(context).colorScheme.surface,
      leading: DrawerButton(
        color: Colors.white,
        onPressed: () {},
      ),
      centerTitle: true,
      title: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );

    return Scaffold(
      appBar: myAppBar,
      body: SizedBox(
        child: SingleChildScrollView(
            child: SalesListWidget(
          listOfSales: listOfSales,
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: newSell,
        child: const Icon(Icons.add),
      ),
    );
  }
}
