import 'package:dl_google_products/models/product.dart';
import 'package:dl_google_products/widgets/left_image_product_item.dart';
import 'package:dl_google_products/widgets/right_image_product_item.dart';
import 'package:dl_google_products/widgets/top_bar.dart';
import 'package:dl_google_products/widgets/two_products_item.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(16),
          child: Image.asset('assets/images/google_logo.png'),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset('assets/icons/menu.png'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopBar(),
            RightImageProductItem(
              screenHeigth: screenHeight,
              product: pixel,
            ),
            LeftImageProductItem(
              screenHeigth: screenHeight,
              product: stadia,
            ),
            TwoProductsItem(
              screenHeight: screenHeight,
              product1: pixelStand,
              product2: dayDreamView,
            ),
          ],
        ),
      ),
    );
  }
}
