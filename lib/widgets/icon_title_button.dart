import 'package:flutter/material.dart';

class IconTitleButton extends StatelessWidget {
  final String title, iconPath;

  const IconTitleButton({Key key, this.title, this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            iconPath,
            height: 25,
            color: Color(0xFFDA1D21),
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xFFDA1D21),
              fontSize: 10,
              height: 2,
            ),
          ),
        ],
      ),
    );
  }
}
