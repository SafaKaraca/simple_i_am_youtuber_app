import 'package:flutter/material.dart';
import 'constants.dart';

class FormButtonDecoration extends StatelessWidget {
  String text;
  var Page;

  FormButtonDecoration({required this.text, required this.Page});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
        height: 60.0,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: kSecondSocialCardBackground),
        child: Center(
          child: Text(
            text,
            style: kButtonTextStyle,
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Page),
        );
      },
    );
  }
}
