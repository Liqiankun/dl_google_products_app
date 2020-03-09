import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String buttonText;

  const BlueButton({Key key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        buttonText,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 10,
        ),
      ),
      color: Color(0xFF0000FF),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(20),
      )),
      onPressed: () => print('pressed'),
    );
  }
}
