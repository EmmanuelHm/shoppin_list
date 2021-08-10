import 'package:flutter/material.dart';
import 'package:shopping_list/Screens/Login/LoginScreen.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Components/MyButtons/MyLoginButton.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Scroll, para dispositivos pequeños en caso de que no alcance a verse
        body: SingleChildScrollView(
          child: Container(
            // Paddings laterales
            padding: EdgeInsets.symmetric(horizontal: 20),
            // Para el ancho y alto del dispositivo
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: DesignWidgets.linearGradientMain(context)),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DesignWidgets.titleCustom(),
                MyLoginButton(TextApp.LOGIN, Theme.of(context).primaryColor,
                    Colors.white, LoginScreen()),
                _signUpButton(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Botones

Widget _signUpButton(BuildContext context) {
  return Container(
    width: double.infinity,
    child: OutlineButton(
      onPressed: () {
        print("Registro");
      },
      borderSide: BorderSide(color: Colors.white),
      highlightedBorderColor: Theme.of(context).primaryColorLight,
      padding: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Text(
        TextApp.SINGUP,
        style: TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    ),
  );
}
