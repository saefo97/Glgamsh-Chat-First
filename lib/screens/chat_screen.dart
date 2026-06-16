import 'package:chat_first/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  bool isMe = false;
  List<String> X = ["Hi", "Wenk", "?","BLOOOOCK"];
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
        backgroundColor: kDarkColor1,
        title: Text("Chat", style: TextStyle(color: Colors.white)),
        // centerTitle: true,
      ),
      body: SafeArea(
        bottom: true,
        child: ListView.builder(
          itemCount: X.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: isMe
                  ? AlignmentGeometry.centerRight
                  : Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 8),
              child: Container(
                padding: EdgeInsets.all(8),
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
                child: Text(
                  X[index],
                  style: TextStyle(
                    color: isMe ? Colors.black : Colors.white,
                    fontFamily: "times",
                  ),
                ),
              ),
            );
          },
          padding: EdgeInsets.all(8),
        ),
      ),
      bottomSheet: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  minLines: 1,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: "Type a message",
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                color: kDarkColor1,
                onPressed: () {},
                icon: Icon(Icons.send),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
