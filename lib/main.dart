import 'package:flutter/material.dart';
import 'package:i_am_youtuber/Pages/link_page.dart';
import 'package:i_am_youtuber/Pages/login_page.dart';
import 'package:i_am_youtuber/Pages/register_page.dart';

void main() {
  runApp(PersonalSocialAddress());
}

class PersonalSocialAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: LoginPage(),
    );
  }
}
