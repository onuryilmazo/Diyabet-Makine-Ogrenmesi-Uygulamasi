import 'package:bitirme/generated/l10n.dart';
import 'package:bitirme/pages/first_page.dart';
import 'package:flutter/material.dart';
import 'package:bitirme/components/onboarding_page.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              OnboardingPageWidget(
                image: 'assets/images/onboardingo.png',
                title: S.of(context).title,
                description: S.of(context).onboardingDescription1,
              ),
              OnboardingPageWidget(
                image: 'assets/images/onboardingo.png',
                title: S.of(context).diabetesTitle,
                description: S.of(context).diabetesDescription,
              ),
              OnboardingPageWidget(
                image: 'assets/images/onboardingo.png',
                title: S.of(context).howItWorksTitle,
                description: S.of(context).howItWorksDescription,
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _currentIndex != 2 ? TextButton(
                  onPressed: () {
                    _pageController.animateToPage(
                      2,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(S.of(context).skip),
                )
                    : SizedBox.shrink(),
                Row(
                  children: List.generate(3, (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: _currentIndex == index ? 12 : 8,
                      height: _currentIndex == index ? 12 : 8,
                      decoration: BoxDecoration(
                        color: _currentIndex == index ? Colors.blue : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
                ),
                _currentIndex == 2 ? TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstPage(),
                      ),
                    );
                  },
                  child: Text(S.of(context).getStarted),
                )
                    : TextButton(
                  onPressed: () {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(S.of(context).next),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
