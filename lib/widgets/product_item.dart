import 'package:flutter/material.dart';
import '../app_routes.dart';
import '../models/product.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black.withAlpha(200),
          leading: Consumer<Product>(
            builder: (context, productConsumer, child) => IconButton(
              onPressed: () {
                productConsumer.toggleFavorite();
              },
              icon: Icon(
                product.isFarorite! ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
          title: Text(
            product.title ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.red),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(AppRoutes.detail);
          },
          child: Image.network(product.imageUrl!, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
