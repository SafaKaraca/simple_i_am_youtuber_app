import 'package:flutter/material.dart';
import 'constants.dart';

class FormInputDecoration extends StatelessWidget {
  String hintText;

  FormInputDecoration({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      height: 60,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: kInputTextStyle,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
