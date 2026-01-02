import 'package:flutter/material.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_styles.dart';
import '../../../../utils/constants.dart';
import 'sebha_stack.dart';

class Sebha extends StatefulWidget {
  static const String routeName = "Sebha";
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;
  int index = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.sebhaBG),
          fit: BoxFit.cover,
          opacity: 0.8,
        ),
        gradient: LinearGradient(
          colors: [AppColors.gold, Colors.black],
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.lightBlack.withAlpha(210),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  AppAssets.islamiLogo,
                  height: size.height * 0.2,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "سَبِّحِ اسْمَ رَبِّكَ الْأَعْلَى",
                textAlign: TextAlign.center,
                style: AppStyles.whiteBold36,
              ),
              const Spacer(),
              Center(
                child: SebhaStack(
                  counter: counter,
                  angle: angle,
                  tasbehText: tasbeha[index],
                  onSebhaClick: onSebhaClick,
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  void onSebhaClick() {
    setState(() {
      counter++;
      angle += 0.5;

      if (counter == 33) {
        counter = 0;
        index++;
        if (index == tasbeha.length) {
          index = 0;
        }
      }
    });
  }
}
