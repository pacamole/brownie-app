import 'package:brownie_app/classes/product.dart';
import 'package:brownie_app/widgets/item_sold_card.dart';
import 'package:flutter/material.dart';

class SalesListWidget extends StatelessWidget {
  const SalesListWidget({
    super.key,
    required this.listOfSales,
  });

  final List<Product> listOfSales;
  @override
  Widget build(BuildContext context) {
    // listOfSales.sort(
    //   (a, b) {
    //     return a.date.compareTo(b.date);
    //   },
    // ); NOT WORKING
    return ListView.builder(
      shrinkWrap: true,
      itemCount: listOfSales.length,
      itemBuilder: (context, index) {
        final trueIndex = listOfSales.length - (index + 1);
        return ItemSoldCardWidget(
          image: listOfSales[trueIndex].image,
          product: listOfSales[trueIndex],
          quantity: index + 1,
        );
      },
    );
  }
}
