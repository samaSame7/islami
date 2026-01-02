import 'package:flutter/material.dart';
import '../../../../utils/app_assets.dart';
import '../../../../utils/app_styles.dart';

class SebhaStack extends StatelessWidget {
  final int counter;
  final double angle;
  final String tasbehText;
  final VoidCallback onSebhaClick;

  const SebhaStack({
    super.key,
    required this.counter,
    required this.angle,
    required this.tasbehText,
    required this.onSebhaClick,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: onSebhaClick,
          child: Transform.rotate(
            angle: angle,
            child: Image.asset(
              AppAssets.sebhaBody,
              height: size.height * 0.35,
              width: size.width * 0.8,
              fit: BoxFit.contain,
            ),
          ),
        ),

        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(tasbehText, style: AppStyles.whiteBold36),
            const SizedBox(height: 15),
            Text("$counter", style: AppStyles.whiteBold36),
          ],
        ),
      ],
    );
  }
}
