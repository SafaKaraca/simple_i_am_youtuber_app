import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      //Appbar styling
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text(
          'I am a Content Creator',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
        centerTitle: true,
      ),
      body: const MainPage(),
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
          //Background image
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/background.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),

          //Starting Column
          child: Column(children: [
            //Avatar Card
            Card(
              color: Color(0xFF1D1E33),
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
            //Padding for the text of channels
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Text(
                'Here is my channels',
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 30, color: Colors.white),
              ),
            ),

            //First Row (Youtube,Instagram,Twitter)

            Row(children: [
              //First cards Expanded
              Expanded(
                child: ReusableCard(
                  launchLink:
                      'https://www.youtube.com/channel/UCn7rIX4UXChWNBVp2wwKV_Q',
                  imageLink: 'images/youtube.png',
                  colour: Colors.white,
                ),
              ),
              //Second cards Expanded
              Expanded(
                child: ReusableCard(
                  launchLink: 'https://www.instagram.com/safamuhammedkaraca/',
                  imageLink: 'images/Instagram.png',
                  colour: Colors.white,
                ),
              ),
              //Third cards Expanded
              Expanded(
                child: ReusableCard(
                  launchLink: 'https://www.twitter.com/',
                  imageLink: 'images/twitter.png',
                  colour: Colors.white,
                ),
              ),
            ]),

            //Second Row (Linkedin, Github, Stackoverflow
            Row(children: [
              //Fourth cards Expanded
              Expanded(
                child: ReusableCard(
                  launchLink: 'https://www.linkedin.com/in/safamuhammedkaraca/',
                  imageLink: 'images/linkedin.png',
                  colour: Color(0xFF1D1E33),
                ),
              ),
              //Fifth cards Expanded
              Expanded(
                child: ReusableCard(
                  launchLink: 'https://github.com/SafaKaraca',
                  imageLink: 'images/github.png',
                  colour: Color(0xFF1D1E33),
                ),
              ),
              //Sixth cards Expanded
              Expanded(
                child: ReusableCard(
                  launchLink: 'https://stackoverflow.com/',
                  imageLink: 'images/stackoverflow.png',
                  colour: Color(0xFF1D1E33),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}

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

//TODO: Linkedin and github logos will be fixed. Code repetitives will be fixed. Colors might be checked.
