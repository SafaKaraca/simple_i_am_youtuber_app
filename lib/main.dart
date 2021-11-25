import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'I am a Youtuber',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
        centerTitle: true,
      ),
      body: const MainPage(),
      backgroundColor: Colors.grey[200],
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
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'To see my channels, please click logos',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Varela',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.red[700]),
              ),
            ),
          ),
          Row(children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(250),
                ),
                child: InkWell(
                  onTap: () => launch(
                      'https://www.youtube.com/channel/UCn7rIX4UXChWNBVp2wwKV_Q'),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      'images/youtube.png',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.fromLTRB(10, 5, 0, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(250),
                ),
                child: InkWell(
                  onTap: () =>
                      launch('https://www.instagram.com/safamuhammedkaraca/'),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      'images/Instagram.png',
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Card(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(250),
                ),
                child: InkWell(
                  onTap: () =>
                      launch('https://www.instagram.com/safamuhammedkaraca/'),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      'images/twitter.png',
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
