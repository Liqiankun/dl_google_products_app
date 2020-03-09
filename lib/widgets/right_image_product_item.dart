import 'package:dl_google_products/models/product.dart';
import 'package:dl_google_products/pages/detail/product_detail_page.dart';
import 'package:dl_google_products/widgets/blue_button.dart';
import 'package:dl_google_products/widgets/fade_page_route.dart';
import 'package:flutter/material.dart';

class RightImageProductItem extends StatelessWidget {
  final double screenHeigth;
  final Product product;

  const RightImageProductItem({Key key, this.screenHeigth, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          FadePageRoute(
            widget: ProductDetailPage(product: product),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 32),
        height: screenHeigth * 0.3,
        color: product.backgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BlueButton(
                    buttonText: product.buttonText,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 50,
                    bottom: -50,
                    child: Transform.rotate(
                      angle: -0.2,
                      child: Hero(
                        tag: product.name,
                        child: Image.asset(product.imagePath),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
