import 'package:dl_google_products/widgets/product_detail_nav_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailBackground extends StatelessWidget {
  final double screenWidth, screenHeight;

  const ProductDetailBackground({Key key, this.screenWidth, this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: screenWidth * 0.27,
          top: -screenWidth * 0.4,
          child: Container(
            height: screenWidth * 1.2,
            width: screenWidth * 1.2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF0000FF),
            ),
          ),
        ),
        Positioned(
          left: 20,
          right: 20,
          top: screenHeight * 0.2,
          child: Image.asset('assets/images/google_text_logo.png',
              color: Color(0xFFECECEC).withOpacity(0.4)),
        ),
      ],
    );
  }
}
