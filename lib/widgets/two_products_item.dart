import 'package:dl_google_products/models/product.dart';
import 'package:dl_google_products/pages/detail/product_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoProductsItem extends StatelessWidget {
  final Product product1, product2;
  final double screenHeight;

  const TwoProductsItem(
      {Key key, this.product1, this.product2, this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.25,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product1),
                  ),
                );
              },
              child: VerticalProductItem(
                screenHeight: screenHeight,
                product: product1,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product2),
                  ),
                );
              },
              child: VerticalProductItem(
                screenHeight: screenHeight,
                product: product2,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VerticalProductItem extends StatelessWidget {
  final Product product;
  final double screenHeight;

  const VerticalProductItem({Key key, this.product, this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: product.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: product.name,
            child: Image.asset(
              product.imagePath,
              height: screenHeight * 0.15,
            ),
          ),
          SizedBox(height: 8),
          Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(0xFF3B3B3B),
              fontSize: 14,
            ),
          ),
          Text(
            product.description,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color(0xFF3B3B3B),
              fontSize: 8,
            ),
          ),
        ],
      ),
    );
  }
}
