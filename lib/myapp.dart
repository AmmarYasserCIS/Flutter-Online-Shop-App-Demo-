import 'package:flutter/material.dart';
import 'package:projects/Signup.dart';
import 'BottomNav/Layout.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),debugShowCheckedModeBanner: false,
      home: Scaffold(


        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
          children: [
            OnboardingStep(
              imagePath: 'images/online.png',
                title: 'Online Order',
              description: 'Now you can Shopping from Home.',
            ),
            OnboardingStep(
              imagePath: 'images/pay.png',
              title: 'Easy Payment',
              description: 'No difficulties anymore in Payment Proccess.',

            ),
            OnboardingStep(
              imagePath: 'images/deli.png',
              title: 'Fast Delivery',
              description: 'Fast Delivery Whereever you are.',
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => signup()));
                },
              ),
              Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 8.0,
                      width: i == _currentPage ? 24.0 : 8.0,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        color: i == _currentPage
                            ? Colors.red
                            : Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                ],
              ),
              TextButton(
                child: Text(
                  _currentPage == 2 ? 'Get Started' : 'Next',
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  if (_currentPage == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => signup()));
                  } else {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingStep extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingStep({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          height: 200.0,
          width: 200.0,
        ),
        SizedBox(height: 32.0),
        Text(
          title,
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16.0),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}