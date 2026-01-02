import 'package:flutter/material.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import 'navigation_builder.dart';
import 'pageview_builder.dart';

class Onboarding extends StatefulWidget {
  static const String routeName = "Onboarding";
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var activeColor = AppColors.gold;
    var inactiveColor = AppColors.gray;

    return Scaffold(
      backgroundColor: AppColors.lightBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(AppAssets.islamiLogo),
            ),

            Expanded(
              child: PageviewBuilder(
                pageController: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),

            // 3. Bottom Navigation Section
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: NavigationBuilder(currentIndex: _currentIndex,
                pageController: _pageController,),
            ),
          ],
        ),
      ),
    );
  }
}