import 'package:brownie_app/classes/product.dart';
import 'package:flutter/material.dart';

class ItemSoldCardWidget extends StatelessWidget {
  final Product product;
  final int quantity;
  final String image;

  const ItemSoldCardWidget({
    super.key,
    required this.product,
    required this.quantity,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                height: 100,
                width: 130),
            Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "$quantity",
                            style: TextStyle(color: Colors.green),
                          ),
                          // Text(
                          // "R\$${produc * quantity} = ${product.sellingPrice} = ${product.productionCost}"),
                        ],
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
