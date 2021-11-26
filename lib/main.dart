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
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/bakcground.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150),
              ),
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    'images/avatar.png',
                    scale: 3,
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Text(
                'Here is my channels',
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 20, color: Colors.white),
              ),
            ),
            Row(children: [
              Expanded(
                child: Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(250),
                  ),
                  child: InkWell(
                    onTap: () => launch(
                        'https://www.youtube.com/channel/UCn7rIX4UXChWNBVp2wwKV_Q'),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'images/youtube.png',
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(250),
                  ),
                  child: InkWell(
                    onTap: () =>
                        launch('https://www.instagram.com/safamuhammedkaraca/'),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'images/Instagram.png',
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(250),
                  ),
                  child: InkWell(
                    onTap: () =>
                        launch('https://www.instagram.com/safamuhammedkaraca/'),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
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
      ),
    );
  }
}
