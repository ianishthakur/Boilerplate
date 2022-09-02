import 'package:flutter/material.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final splashwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: splashwidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.icons, height: 200, width: 200),
            SizedBox(
              height: 30,
            ),
            Text(
              Strings.splashtitle,
              style:
                  TextStyle(fontSize: 18, decorationColor: Colors.greenAccent),
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
