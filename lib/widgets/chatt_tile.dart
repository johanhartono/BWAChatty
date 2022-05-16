//BWA Design To Code Tutorial

import 'package:flutter/material.dart';
import 'package:chatty/themes.dart';

// ignore: use_key_in_widget_constructors
class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 55,
              height: 55,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 12,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    name,
                    style: titleTextStyle,
                  ),
                  Text(
                    text,
                    style: subtitleTextStyle,
                  ),
                ]),
            // ignore: prefer_const_constructors
            Spacer(),
            Text(
              time,
              style: unread ? subtitleTextStyle.copyWith(color: blackColor) : subtitleTextStyle,
  
            )
          ],
        ));
  }
}
