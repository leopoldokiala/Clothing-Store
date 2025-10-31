import 'package:flutter/material.dart';
import '../widgets/product_grid.dart';

enum Options { favorites, all }

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja de Roupas'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          PopupMenuButton(
            onSelected: (Options value) {
              if (value == Options.all) {
              } else {}
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: Options.favorites,
                child: Text('somente favoritos'),
              ),
              PopupMenuItem(value: Options.all, child: Text('Todos produtos')),
            ],
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}
