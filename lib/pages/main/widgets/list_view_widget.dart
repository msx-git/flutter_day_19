import 'package:flutter/material.dart';

import '../../../models/product.dart';
class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10)
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            width: 120,
            height: 160,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(child: Text(product.title)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(product.isNew ? 'Новый' : 'Б/У'),
                  const SizedBox(height: 10),
                  Text(
                    "\$${product.price.toStringAsFixed(0)}",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text("📍${product.address}")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
