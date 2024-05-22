import 'package:flutter/material.dart';

import '../../../models/product.dart';

// class GridViewWidget extends StatelessWidget {
//   const GridViewWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       padding: const EdgeInsets.all(10),
//       itemCount: products.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 1 / 2.3,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//       ),
//       itemBuilder: (context, index) {
//         return GridItem(index: index);
//       },
//     );
//   }
// }

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10)
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12.0),
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
          )
        ],
      ),
    );
  }
}
