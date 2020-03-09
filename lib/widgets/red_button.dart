import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String buttonText;

  const RedButton({Key key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(horizontal: 96),
      child: Text(
        buttonText.toUpperCase(),
        style: TextStyle(
          fontSize: 13,
          color: Colors.white,
        ),
      ),
      color: Color(0xFFDA1D21),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(30),
      )),
      onPressed: () => print('on pressed'),
    );
  }
}
