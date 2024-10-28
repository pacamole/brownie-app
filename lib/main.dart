import 'package:brownie_app/classes/product.dart';
import 'package:brownie_app/themes/custom_theme.dart';
import 'package:brownie_app/widgets/item_sold_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customTheme,
      home: const MyHomePage(title: 'Brownie App'),
    );
  }
}

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
      ingredients: ["Açúcar", "Trigo", "Achocolatado", "Ovo", "Manteiga"]);

  List<Widget> listOfSales = <Widget>[];

  void newSell() {
    setState(() {
      listOfSales.add(ItemSoldCard(
        product: brownie,
        quantity: 2,
        initialNumberOfItems: 12,
        image: "lib\\images\\brownie.jpeg",
      ));
    });

    print(listOfSales);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[...listOfSales],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: newSell,
        child: const Icon(Icons.add),
      ),
    );
  }
}
