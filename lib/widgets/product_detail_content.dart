import 'package:dl_google_products/widgets/icon_title_button.dart';
import 'package:dl_google_products/widgets/red_button.dart';
import 'package:flutter/material.dart';
import 'package:dl_google_products/models/product.dart';

class ProductDetailContent extends StatelessWidget {
  final Product product;
  final double screenHeight;

  const ProductDetailContent(
      {Key key, @required this.product, @required this.screenHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double safeBottomPadding = MediaQuery.of(context).padding.bottom;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: screenHeight * 0.2),
          Image.asset(
            product.imagePath,
            height: screenHeight * 0.3,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Staring*',
                style: TextStyle(
                  fontSize: 10,
                  color: Color(0xFF909090),
                  fontWeight: FontWeight.w900,
                ),
              ),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$',
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontSize: 10,
                    ),
                  ),
                  TextSpan(
                    text: '${product.price}',
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ],
              )),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                product.name.replaceAll('\n', ' ') + '\t\t\t',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 17.0,
                  color: Color(0xFF333333),
                ),
              ),
              Image.asset(
                'assets/images/stadia_logo.png',
                height: 20,
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            product.productInfo +
                product.productInfo +
                product.productInfo +
                product.productInfo,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14.0,
              color: Color(0xFF909090),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconTitleButton(
                title: 'Create',
                iconPath: 'assets/icons/create.png',
              ),
              IconTitleButton(
                title: 'Connect',
                iconPath: 'assets/icons/connect.png',
              ),
              IconTitleButton(
                title: 'Discover',
                iconPath: 'assets/icons/discover.png',
              ),
            ],
          ),
          Divider(
            color: Color(0xFFF5F5F5),
            thickness: 1,
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RedButton(
                buttonText: 'Pre-order',
              ),
              Material(
                elevation: 5,
                shape: CircleBorder(),
                child: Icon(
                  Icons.add,
                  size: 35,
                  color: Color(0xFF0000FF),
                ),
              )
            ],
          ),
          SizedBox(height: safeBottomPadding)
        ],
      ),
    );
  }
}
