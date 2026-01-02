import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';
import '../../utils/app_colors.dart';
import '../../utils/constants.dart';
import '../main/main.dart';

class NavigationBuilder extends StatelessWidget {
  final int currentIndex;
  final PageController pageController;

  const NavigationBuilder({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: currentIndex == 0
              ? null
              : () {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
          child: Text(
            currentIndex == 0 ? "" : "Back",
            style: AppStyles.goldBold16,
          ),
        ),

        Row(
          children: List.generate(
            pages.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 10,
              width: currentIndex == index ? 25 : 10,
              decoration: BoxDecoration(
                color: currentIndex == index ? AppColors.gold : AppColors.gray,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),

        TextButton(
          onPressed: () {
            if (currentIndex == pages.length - 1) {
              Navigator.pushReplacementNamed(context, Main.routeName);
            } else {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
          child: Text(
            currentIndex == pages.length - 1 ? "Finish" : "Next",
            style: AppStyles.goldBold16,
          ),
        ),
      ],
    );
  }
}
