import 'package:flutter/material.dart';
import 'package:i_am_youtuber/Constants/constants.dart';
import 'package:i_am_youtuber/Pages/link_page.dart';
import 'package:i_am_youtuber/Pages/register_page.dart';
import '../FormDecorations/form_input_decoration.dart';
import '../FormDecorations/form_button_decoration.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  'Welcome to Login Page',
                  style: kHeaderTextStyle,
                ),
                FormInputDecoration(hintText: 'Email'),
                FormInputDecoration(hintText: 'Password'),
                FormButtonDecoration(
                  text: 'Log In',
                  Page: LinkPage(),
                ),
                GestureDetector(
                  child: Text(
                    'Click for Register',
                    style: kUnderlineTextStyle,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
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
