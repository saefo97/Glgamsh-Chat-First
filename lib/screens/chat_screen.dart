import 'package:flutter/material.dart';

import '../constans.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  bool isMe = false;

  List<String> X = ["Hi", "Wenk", "?", "Block"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        backgroundColor: kDarkColor1,
        // centerTitle: true,
        // actions: [
        //   Icon(Icons.phone),
        //   Icon(Icons.video_camera_front_rounded),
        //   Icon(Icons.menu)
        // ],
        // leading: Icon(Icons.add),
      ),
      body: SafeArea(
        bottom: true,
        child: ListView.builder(
          itemCount: X.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 8),
              alignment: isMe
                  ? AlignmentGeometry.centerRight
                  : Alignment.centerLeft,
        
              child: Container(
                decoration: BoxDecoration(
                  color: isMe ? kLightColor1 : kDarkColor2,
                  borderRadius: isMe
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                          topLeft: Radius.circular(32),
                        )
                      : BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                ),
                padding: EdgeInsets.all(8),
                child: Text(
                  X[index],
                  style: TextStyle(
                    fontFamily: "times",
                    color: isMe ? Colors.black : Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            );
          },
          padding: EdgeInsets.all(8),
        ),
      ),

      bottomSheet: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hint: Text("Type a message"),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                color: kDarkColor1,

                onPressed: () {

                },
                icon: Icon(Icons.send),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
