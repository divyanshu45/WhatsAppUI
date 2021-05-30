import 'package:flutter/material.dart';
import 'chattile.dart';
import 'storybutton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Whatsapp(),
    );
  }
}

class Whatsapp extends StatefulWidget {
  @override
  _WhatsappState createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  //Adding the main color of the app
  Color mainColor = Color(0xFF177767);
  var containerRadius = Radius.circular(30.0);
  //Adding a list of image URL to simulate the avatar picture
  List<String> imageUrl = [
    "assets/images/avtar1.png",
    "assets/images/avtar2.png",
    "assets/images/avtar3.png",
    "assets/images/avtar4.png",
    "assets/images/avtar5.png",
    "assets/images/avtar6.png",
    "assets/images/avtar7.png",
    "assets/images/avtar8.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text("WhatsApp"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          //First let's create the Story time line container
          Container(
            height: 100.0,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                children: [
                  //Let's create a custom widget for our story button
                  storyButton(imageUrl[0], "Aditay"),
                  storyButton(imageUrl[1], "Aayush"),
                  storyButton(imageUrl[2], "Abhishek"),
                  storyButton(imageUrl[3], "Divyanshu"),
                  storyButton(imageUrl[4], "Kunal"),
                  storyButton(imageUrl[5], "Sahil"),
                  storyButton(imageUrl[6], "Amit"),
                  storyButton(imageUrl[7], "Vivek"),
                ],
              ),
            ),
          ),

          //Now let's create our chat timeline
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    //Now let's create our chat tile custom widget
                    chatTile(imageUrl[0], "Aditay", "Message", "9 am", false),
                    chatTile(imageUrl[1], "Aayush", "Message", "8 am", true),
                    chatTile(imageUrl[2], "Abhishek", "Message", "6 am", true),
                    chatTile(imageUrl[3], "Divyanshu", "Message", "Yesterday", false),
                    chatTile(imageUrl[5], "Kunal", "Message", "Yesterday", false),
                    chatTile(imageUrl[4], "Sahil", "Message", "San 20", true),
                    chatTile(imageUrl[6], "Amit", "Message", "San 20", true),
                    chatTile(imageUrl[7], "Vivek", "Message", "San 20", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
