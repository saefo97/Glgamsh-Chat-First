import 'package:chat_first/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/custom_button.dart';
import '../constans.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {

  int selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
                children: [
                  Column(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("👋", style: TextStyle(fontSize: 150)),
                      Text(
                        "Welcome to our Chat App!",
                        style: TextStyle(
                          fontSize: 30,
                          color: kDarkColor1,
                          fontFamily: 'times',
                        ),
                      ),
                    ],
                  ),

                  Column(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("😊", style: TextStyle(fontSize: 150)),
                      Text(
                        "Nice Community",
                        style: TextStyle(
                          fontSize: 30,
                          color: kDarkColor1,
                          fontFamily: 'times',
                        ),
                      ),
                    ],
                  ),

                  Column(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("🏃", style: TextStyle(fontSize: 150)),
                      Text(
                        "Let's Get Started",
                        style: TextStyle(
                          fontSize: 30,
                          color: kDarkColor1,
                          fontFamily: 'times',
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                for(int i =0 ; i <3; i++)
                AnimatedContainer(duration: Duration(milliseconds: 300),
                width:i==selectedIndex ? 20 : 12,height: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    gradient: i == selectedIndex ? kDarkGradient : kGrayGradient
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                  alignment: AlignmentGeometry.centerRight,

                  child: CustomButton(title: selectedIndex == 2 ? "Let's Go!" : "Next",
                  onPressed: () async {
                    selectedIndex == 2     ? 
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()))                       
                        :   _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('isFirstTime', true);

                  },

                  )),
            )

          ],
        ),
      ),
    );
  }
}
