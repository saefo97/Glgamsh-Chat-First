

import 'package:chat_first/authentication/auth_services.dart';
import 'package:flutter/material.dart';

import '../constans.dart';
import '../screens/welcome_screen.dart';

class AppDrawer extends StatelessWidget {
   AppDrawer({
    super.key,
  });

  AuthServices _authServices = AuthServices();


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [ListTile(
          title: Text("Sign Out",
            style: TextStyle(fontSize: 18,color: kDarkColor2,fontFamily: 'times',
                fontWeight: FontWeight.w500
            ),
          ),
          //   leading: Icon(Icons.exit_to_app),
          trailing: Icon(Icons.exit_to_app),
          iconColor: kDarkColor2,
          onTap: (){
            _authServices.signOut();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
          },
        ),],
      ),
    );
  }
}
