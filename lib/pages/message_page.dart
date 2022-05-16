//BWA Design To Code Tutorial

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 12,
            ),
            Container(
          
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff505C6B),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble({
      required String imageUrl,
      required String text,
      required String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Color(0xff505C6B),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/icon_profile.png',
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fair',
                  style: GoogleFonts.poppins(
                    color: Color(0xff2C3A59),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '14,209 members',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff808BA2),
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/icon_call.png',
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageUrl: 'assets/images/image_profile1.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/images/image_profile2.png',
                text: 'Find here :P',
                time: '2:30',
              ),
              senderBubble(
                imageUrl: 'assets/images/image_profile3.png',
                text:
                    'Thinking about how to deal\nwith this client from hell...',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/images/image_profile4.png',
                text: 'Love them',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message ...',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff999999),
              ),
            ),
            Image.asset(
              'assets/images/btn_send.png',
              width: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}