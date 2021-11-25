import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text('I am A Youtuber'),
        centerTitle: true,
      ),
      body: MainPage(),
      backgroundColor: Colors.white,
    ),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'To see my youtube channel, please click the Youtube logo',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red[900]),
          ),
          InkWell(
            onTap: () => launch(
                'https://www.youtube.com/channel/UCn7rIX4UXChWNBVp2wwKV_Q'),
            child: const Image(
              image: AssetImage('images/youtube.jpg'),
            ),
          ),
        ]),
      ),
    );
  }
}
