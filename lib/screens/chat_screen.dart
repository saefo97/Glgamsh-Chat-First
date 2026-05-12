import 'package:chat_first/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadiusGeometry.circular(50)
        // ),
        // leading: Icon(Icons.pedal_bike),
        // actions: [
        //   Icon(Icons.phone),Icon(Icons.video_call),Icon(Icons.more),
        // ],
        backgroundColor: kDarkColor2,
        title: Text("Chat",
        style: TextStyle(
          color: Colors.white,
          
        ),
        ),
        // centerTitle: true,
      ),
      body: Column(

      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(),
      ),
    );
  }
}
