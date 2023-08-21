import 'package:flutter/material.dart';
import 'package:swiggy/const/AppColor.dart';
import 'package:swiggy/ui/login/login.dart';
import 'package:swiggy/ui/welcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease);
      setState(() {
        _currentPage++;
      });
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomeScreen()));
              },
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                OnboardingPage(image: "delivery1.png", text: 'Welcome to our app!\nDiscover amazing features'),
                OnboardingPage(image: 'quality.png', text: 'Personalize your settings\nTailor the app to your needs'),
                OnboardingPage(image: 'reward.png', text: 'Start your journey now\nExplore and enjoy the app'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(3, (int index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 10,
                width: _currentPage == index ? 30 : 10,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: _currentPage == index ? AppColors.tSecondaryColor : Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
              );
            }),
          ),
          SizedBox(height: 20),
         ElevatedButton(
           style: ElevatedButton.styleFrom(

             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(48)),
             minimumSize: Size(350, 40), //////// HERE
           ),

           onPressed: () {
         _nextPage();
         },
           child: Text(_currentPage < 2 ? 'Next' : 'Get Started'),
         ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String text;

  OnboardingPage({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/$image',fit: BoxFit.cover,),
        SizedBox(height:32
        ),
        Container(
          padding: EdgeInsets.only(bottom: 132),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
