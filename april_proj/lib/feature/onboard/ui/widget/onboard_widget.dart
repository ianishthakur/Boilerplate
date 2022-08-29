import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';
import '../../../../common/route/routes.dart';

class OnboardWidget extends StatelessWidget {
  final pages = [
    PageViewModel(
      title: Strings.onboading1Title,
      body: Strings.onboading1des,
      image: Image.asset(Assets.ob1),
    ),
    PageViewModel(
      title: Strings.onboading2Title,
      body: Strings.onboading2des,
      image: Image.asset(Assets.ob2),
    ),
    PageViewModel(
      title: Strings.onboading3Title,
      body: Strings.onboading3des,
      image: Image.asset(Assets.ob3),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: pages,
        showSkipButton: false,
        showBackButton: true,
        showNextButton: true,
        back: const Text(
          "Previous",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        done: const Text(
          "Done",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        next: const Text(
          "Next",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        onDone: () {
          Navigator.pushNamed(context, Routes.login);
        },
      ),
    );
  }
}
