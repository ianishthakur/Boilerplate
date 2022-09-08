import 'package:boilerplate/common/widget/textfield/drawer_common_Text.dart';
import 'package:flutter/material.dart';

import '../../../../common/constant/strings.dart';
import '../../../../common/route/routes.dart';

class NavigatorDrawerWidget extends StatelessWidget {
  const NavigatorDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: Column(
          children: [
            DrawerItem(
              name: Strings.setting,
              icon: Icons.settings,
              onPressed: onItemPressed(context, index: 0),
            ),
            DrawerItem(
              name: Strings.history,
              icon: Icons.settings,
              onPressed: onItemPressed(context, index: 1),
            ),
            DrawerItem(
              name: Strings.editProfile,
              icon: Icons.settings,
              onPressed: onItemPressed(context, index: 2),
            ),
            DrawerItem(
              name: Strings.rewardPoints,
              icon: Icons.settings,
              onPressed: onItemPressed(context, index: 3),
            ),
            DrawerItem(
              name: Strings.helpCenter,
              icon: Icons.settings,
              onPressed: onItemPressed(context, index: 4),
            ),
            DrawerItem(
              name: Strings.inviteUrFrnd,
              icon: Icons.settings,
              onPressed: onItemPressed(context, index: 5),
            ),
          ],
        ),
      ),
    );
  }

  onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.pushNamed(context, Routes.settings);
        break;
      case 1:
        Navigator.pushNamed(context, Routes.history);
        break;
      case 2:
        Navigator.pushNamed(context, Routes.editProfile);
        break;
      case 3:
        Navigator.pushNamed(context, Routes.rewardPoint);
        break;
      case 4:
        Navigator.pushNamed(context, Routes.helpCenter);
        break;
      case 5:
        Navigator.pushNamed(context, Routes.inviteUrFrnd);
        break;

      default:
        Navigator.pop(context);
        break;
    }
  }
}
