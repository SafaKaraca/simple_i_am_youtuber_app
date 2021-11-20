import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('I am A Youtuber'),
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/youtube.jpg'),
        ),
      ),
      backgroundColor: Colors.white,
    ),
  ));
}
