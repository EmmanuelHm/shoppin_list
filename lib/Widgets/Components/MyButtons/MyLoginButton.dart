import 'package:flutter/material.dart';

class MyLoginButton extends StatelessWidget {
  String _text;
  Color _colorText;
  Color _colorButtonBackground;
  Widget _widgetToNavigate;

  // Constructor
  MyLoginButton(this._text, this._colorText, this._colorButtonBackground,
      this._widgetToNavigate);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, bottom: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => _widgetToNavigate)),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(_colorButtonBackground)),
        child: Text(
          _text,
          style: TextStyle(
              color: _colorText,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
