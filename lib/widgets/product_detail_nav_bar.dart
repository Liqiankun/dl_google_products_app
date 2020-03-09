import 'package:flutter/material.dart';

class ProductDetailNavBar extends StatelessWidget {
  const ProductDetailNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 46),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          Icon(Icons.arrow_back),
          Spacer(),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 16),
          Image.asset(
            'assets/icons/menu.png',
            color: Colors.white,
            height: 30,
          ),
        ],
      ),
    );
  }
}
