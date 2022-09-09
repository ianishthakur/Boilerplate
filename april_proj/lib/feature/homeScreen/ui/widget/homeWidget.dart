import 'package:boilerplate/feature/drawer_NavigatorScreen/ui/screen/userProfile_Screen.dart';
import 'package:boilerplate/feature/drawer_NavigatorScreen/ui/widget/navigatorDrawer_Widget.dart';
import 'package:flutter/material.dart';

import '../../../../common/constant/assets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 300,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(
                    Assets.icons,
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                    child: Column(
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      "Welcome Back!",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                )),
                Container(
                  child: Image.asset(
                    Assets.icons,
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  child: Image.asset(
                    Assets.icons,
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
          )
        ],

        backgroundColor: Colors.white,
        // leading: UserProfileScreen(),
        toolbarHeight: 70,
        // leadingWidth: 70,
        title: Text("Hey How r u"),
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      drawer: NavigatorDrawerWidget(),
    );
  }
}
