import 'package:flutter/material.dart';

const kSecondSocialCardBackground = Color(0xFF1D1E33);
const kFirstSocialCardBackground = Color(0xFFDADDFC);

const kInputTextStyle = TextStyle(
    fontWeight: FontWeight.w200,
    fontFamily: 'Pacifico',
    color: kFirstSocialCardBackground);

const kButtonTextStyle = TextStyle(
    fontWeight: FontWeight.w200,
    fontFamily: 'Pacifico',
    fontSize: 20.0,
    color: kFirstSocialCardBackground);

const kUnderlineTextStyle = TextStyle(
    decoration: TextDecoration.underline,
    fontFamily: 'Pacifico',
    color: kFirstSocialCardBackground);

const kBackgorundBoxDecoraiton = BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
      'images/background.jpg',
    ),
    fit: BoxFit.cover,
  ),
);

const kHeaderTextStyle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.w200,
    fontFamily: 'Pacifico',
    color: Colors.white);
