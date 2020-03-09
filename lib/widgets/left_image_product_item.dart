import 'package:dl_google_products/models/product.dart';
import 'package:dl_google_products/widgets/blue_button.dart';
import 'package:flutter/material.dart';

class LeftImageProductItem extends StatelessWidget {
  final double screenHeigth;
  final Product product;

  const LeftImageProductItem({Key key, this.screenHeigth, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 32),
      height: screenHeigth * 0.25,
      color: product.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Image.asset(product.imagePath),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 8, color: Color(0xFF909090)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  BlueButton(
                    buttonText: product.buttonText,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
