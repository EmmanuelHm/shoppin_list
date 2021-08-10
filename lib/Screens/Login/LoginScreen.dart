// import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_list/Screens/Home/HomeScreen.dart';
import 'package:shopping_list/Screens/SignUp/SignUp.dart';
import 'package:shopping_list/Utils/TextApp.dart';
import 'package:shopping_list/Widgets/Components/Containers/ContainerShape01.dart';
import 'package:shopping_list/Widgets/Components/Fields/MyFieldForm.dart';
import 'package:shopping_list/Widgets/Components/MyButtons/MyBackButton.dart';
import 'package:shopping_list/Widgets/Components/MyButtons/MyLoginButton.dart';
import 'package:shopping_list/Widgets/Design/DesignWidgets.dart';
import 'package:super_ui/super_ui.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Fields (Email And Passowrd)
  Widget _emailPasswordWidget() {
    return Column(
      children: [
        MyFieldForm(TextApp.EMAIL_ID, false),
        MyFieldForm(TextApp.PASSWORD, true)
      ],
    );
  }

  Widget _forgottePassword() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      alignment: Alignment.centerRight,
      child: Text(
        TextApp.FORGOT_PASSWORD,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text(TextApp.OR),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _signUpLabel() {
    return TextButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpScreen())),
        style: TextButton.styleFrom(primary: Colors.black),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(TextApp.DONT_HAVE_ACCOUNT,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
            SizedBox(
              width: 10,
            ),
            Text(TextApp.SINGUP,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w600))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ContainerShape01(),
            Positioned(top: height * 0.025, child: MyBackButton()), // 2,5%
            Container(
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: height * .15), // 15%
                      child: DesignWidgets.titleCustomDark(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * .05), // 5%
                      child: _emailPasswordWidget(),
                    ),
                    MyLoginButton(TextApp.LOGIN, Colors.white,
                        Theme.of(context).primaryColor, HomeScreen()),
                    _forgottePassword(),
                    _divider(),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: AuthButton(
                        item: SocialItem.google,
                        onPressed: () {},
                      ),
                    ),
                    _signUpLabel()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
