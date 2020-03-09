import 'package:dl_google_products/models/product.dart';
import 'package:dl_google_products/widgets/product_detail_background.dart';
import 'package:dl_google_products/widgets/product_detail_content.dart';
import 'package:dl_google_products/widgets/product_detail_nav_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        ProductDetailBackground(
          screenHeight: size.height,
          screenWidth: size.width,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              ProductDetailNavBar(),
              ProductDetailContent(
                product: product,
                screenHeight: size.height,
              ),
            ],
          ),
        )
      ],
    ));
  }
}
