import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';
import '../widgets/product_item.dart';

class ProductGrid extends StatelessWidget {
  final bool _showFavoritesOnly;
  const ProductGrid(this._showFavoritesOnly, {super.key});

  @override
  Widget build(BuildContext context) {
    final productsProvider = Provider.of<Products>(context);
    final allProducts = _showFavoritesOnly
        ? productsProvider.favoritesOnly
        : productsProvider.items;

    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: allProducts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 9 / 8,
      ),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: allProducts[index],
        child: ProductItem(),
      ),
    );
  }
}
