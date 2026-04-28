import 'package:chat_first/background_decoration.dart';
import 'package:chat_first/custom_button.dart';
import 'package:chat_first/log_in_screen.dart';
import 'package:chat_first/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundDecoration(child:
      Column(
        mainAxisSize: MainAxisSize.min,

        children: [
        //  Image.network("https://kitchen.sayidaty.net/uploads/small/f4/f4dd06616700c8a35cda336664339134_w750_h500.jpg"),
          Hero(
            tag: "logo",
            child: Image.asset("assets/images/logo.png",
              height: 175,

            ),
          ),
          // CircleAvatar(
          //   radius: 65,
          //   backgroundColor: Colors.green,
          //   child: CircleAvatar(
          //     radius: 60,
          //     backgroundImage: NetworkImage("https://kitchen.sayidaty.net/uploads/small/f4/f4dd06616700c8a35cda336664339134_w750_h500.jpg"),
          //
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Text("Welcome to Our Chat App!",
              style: TextStyle(fontSize: 30, color: kMainColor),

            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: "logIn",
                child: CustomButton(title: "Log In",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInScreen()));
                },

                ),
              ),
              Hero(
                tag: "signUp",
                child: CustomButton(title: "Sign Up",
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                },


                ),
              ),

            ],
          )
        ],
      )
      ),
    );
  }
}
