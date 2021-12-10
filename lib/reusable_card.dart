import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.launchLink,
      required this.imageLink,
      required this.colour});

  String launchLink;
  String imageLink;
  Color colour;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour,
      margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(250),
      ),
      child: InkWell(
        onTap: () => launch(launchLink),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            imageLink,
          ),
        ),
      ),
    );
  }
}
