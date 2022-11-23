import 'package:boilerplate/feature/drawer_NavigatorScreen/ui/screen/userProfile_Screen.dart';
import 'package:boilerplate/feature/drawer_NavigatorScreen/ui/widget/navigatorDrawer_Widget.dart';
import 'package:flutter/material.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/route/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                child: Row(
              children: [
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.navigatorDrawer);
                    },
                    child: Image.asset(
                      Assets.icons,
                      height: 60,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        child: Text(
                          "Welcome Back!",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          "User@123",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
        actions: [
          Container(
            child: Row(
              children: [
                Container(
                    child: Icon(
                  Icons.search,
                  size: 28,
                )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    child: Icon(
                  Icons.notifications,
                  size: 28,
                )),
                Container(
                    margin: EdgeInsets.only(right: 12),
                    width: 40,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.navigatorDrawer);
                      },
                      child: Icon(
                        Icons.menu,
                        size: 28,
                        color: Colors.blue,
                      ),
                    )),
              ],
            ),
          )
        ],
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      
    );
  }
}
