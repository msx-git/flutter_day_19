import 'package:flutter/material.dart';

import '../../repository/product_repository.dart';
import 'widgets/gallery_view_widget.dart';
import 'widgets/grid_view_widget.dart';
import 'widgets/list_view_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int option = 0;

  final controller = TextEditingController();

  var products = ProductRepository().products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Мы нашли более ${products.length} объявлений",
          style: const TextStyle(fontSize: 18),
        ),
        actions: [
          PopupMenuButton(
            offset: const Offset(-15, 45),
            icon: const Icon(Icons.grid_view_outlined),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Галерея'),
                      const SizedBox(width: 30),
                      Icon(
                        Icons.check,
                        color: option == 0 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      option = 0;
                    });
                  },
                ),
                PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Список'),
                      const SizedBox(width: 30),
                      Icon(
                        Icons.check,
                        color: option == 1 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      option = 1;
                    });
                  },
                ),
                PopupMenuItem(
                  padding: EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('Плитка'),
                      const SizedBox(width: 30),
                      Icon(
                        Icons.check,
                        color: option == 2 ? Colors.blue : Colors.transparent,
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      option = 2;
                    });
                  },
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SearchBar(
              onChanged: (value) {
                products = ProductRepository()
                    .products
                    .where(
                      (product) => product.title
                          .toLowerCase()
                          .contains(value.trim().toLowerCase()),
                    )
                    .toList();
                setState(() {});
              },
              controller: controller,
              hintText: 'Qidirish',
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 20)),
              leading: const Icon(Icons.search),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: [
            /// Gallery view
            ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return GalleryItem(product: products[index]);
              },
            ),

            /// List view
            ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListItem(product: products[index]);
              },
            ),

            /// Gallery view
            GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 2.3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return GridItem(product: products[index]);
              },
            ),
          ][option])
        ],
      ),
    );
  }
}
