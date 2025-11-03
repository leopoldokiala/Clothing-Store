import 'package:flutter/material.dart';
import '../widgets/product_grid.dart';

enum Options { favorites, all }

class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({super.key});

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool _showFavoritesOnly = false;

  @override
  Widget build(BuildContext context) {
    //final Products product = Provider.of(context, listen: false).items;
    // final favoritesProducts = ;
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja de Roupas'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          PopupMenuButton(
            onSelected: (Options value) {
              setState(() {
                if (value == Options.favorites) {
                  _showFavoritesOnly = true;
                } else {
                  _showFavoritesOnly = false;
                }
              });
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
      body: ProductGrid(_showFavoritesOnly),
    );
  }
}
