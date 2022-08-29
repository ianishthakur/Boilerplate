import 'package:flutter/material.dart';

import '../../../../common/constant/assets.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.splashIcons, height: 200, width: 200),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
