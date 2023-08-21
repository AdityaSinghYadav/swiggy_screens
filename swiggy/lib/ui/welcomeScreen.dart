import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swiggy/const/AppColor.dart';
import 'package:swiggy/ui/login/login.dart';
import 'package:swiggy/ui/signup/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor:
      isDarkMode ? AppColors.tSecondaryColor : AppColors.tPrimaryColor,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/welcome.png', height: height * 0.6), //note
            Column(
              children: [
                Text(
                  "build Awesome Apps",
                  style: Theme
                      .of(context)
                      .textTheme
                      .displaySmall,
                ),
                Text(
                  "Let's put your creativity on the development highway, craft apps that everyone love.",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => LoginScreen()));
                        },
                        child: Text("Login".toUpperCase()))),
                //note
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: ElevatedButton(

                        onPressed: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (_) => SignUpScreen()));

                        },

                        child: Text("Signup".toUpperCase()))),
                //note
              ],
            )
          ],
        ),
      ),
    );
  }
}
