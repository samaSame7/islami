import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/constants.dart';

class PageviewBuilder extends StatelessWidget {
  final PageController pageController;
  final Function(int) onPageChanged;

  const PageviewBuilder({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: pages.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        var page = pages[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(page['image']!, fit: BoxFit.contain),
            const SizedBox(height: 15),
            Text(
              page['title']!,
              style: TextStyle(
                color: AppColors.gold,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            if (page['desc']!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  page['desc']!,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.gold, fontSize: 18),
                ),
              ),
          ],
        );
      },
    );
  }
}
