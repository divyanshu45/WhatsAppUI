import 'package:flutter/material.dart';

Widget storyButton(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(imgUrl),
          radius: 28.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          userName,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
