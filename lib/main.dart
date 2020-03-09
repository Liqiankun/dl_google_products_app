import 'package:dl_google_products/pages/list/products_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      home: ProductsPage(),
    );
  }
}
