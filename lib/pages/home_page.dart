// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables
//BWA Design To Code Tutorial
import 'package:chatty/themes.dart';
import 'package:flutter/material.dart';
import 'package:chatty/widgets/chatt_tile.dart';

import 'message_page.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
               // ignore: prefer_equal_for_default_values
               MaterialPageRoute(builder: (context) =>  MessagePage()));
          },
          backgroundColor: greenColor,
          child: Icon (
            Icons.add,
            size: 28,
          ),
          ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/image_profile3.png',
              height: 100,
              width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sabrina Carpenter',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text('Travel Freelancer',
                style: TextStyle(
                  color: lightBlueColor,
                  fontSize: 16,
                )),
            SizedBox(
              height: 30,
            ),
            Container(
                width: double.infinity,
                height: 500,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    )),
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/image_profile1.png',
                      name: 'Friends',
                      text: 'Sorry, Your are not my type',
                      time: 'now',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/image_profile4.png',
                      name: 'Friends',
                      text: 'Never mind, there are plenty of nice man',
                      time: '2.30',
                      unread: false,
                    ),
                    SizedBox(height: 30),
                    Text('Groups'),
                    ChatTile(
                      imageUrl: 'assets/images/pic1.png',
                      name: 'Friends',
                      text: 'Sorry, Your are not my type',
                      time: '2.30',
                      unread: false,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/pic1.png',
                      name: 'Friends',
                      text: 'Sorry, Your are not my type',
                      time: '2.30',
                      unread: false,
                    ),
                  ],
                ))
          ]),
        ))));
  }
}
