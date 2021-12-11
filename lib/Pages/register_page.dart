import 'package:flutter/material.dart';
import 'package:i_am_youtuber/Constants/constants.dart';
import 'package:i_am_youtuber/Pages/login_page.dart';
import '../FormDecorations/form_input_decoration.dart';
import '../FormDecorations/form_button_decoration.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: kBackgorundBoxDecoraiton,
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Register Page',
                  style: kHeaderTextStyle,
                ),
                FormInputDecoration(hintText: 'Name'),
                FormInputDecoration(hintText: 'Surname'),
                FormInputDecoration(hintText: 'Email'),
                FormInputDecoration(hintText: 'Password'),
                FormButtonDecoration(
                  text: 'Register',
                  Page: LoginPage(),
                ),
                GestureDetector(
                  child: Text(
                    'Click for Log In',
                    style: kUnderlineTextStyle,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
