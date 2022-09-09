import 'package:flutter/material.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 6,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image.asset(
                    Assets.icons,
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
