import 'package:flutter/material.dart';
import '../screens/product_overview_screen.dart';
import '../app_routes.dart';
import '../providers/products.dart';
import './screens/cart_screen.dart';
import './screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Products(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Minha Loja',
        theme: ThemeData(
          appBarTheme: AppBarThemeData(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),
          fontFamily: 'Lato',
          primaryColor: Colors.deepOrange,
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.home: (context) => ProductOverviewScreen(),
          AppRoutes.cart: (context) => CartScreen(),
          AppRoutes.detail: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}
