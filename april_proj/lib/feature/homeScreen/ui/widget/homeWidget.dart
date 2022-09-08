import 'package:flutter/material.dart';

import '../../../../app/app_dev.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';
import '../../../../common/widget/textfield/drawer_common_Text.dart';
import '../../../drawer_NavigatorScreen/ui/screen/navigatorDrawer_Screen.dart';
import '../../../drawer_NavigatorScreen/ui/widget/navigatorDrawer_Widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GharSubidha"),
      ),
      drawer: NavigatorDrawerWidget(),
    );
  }
}
// drawer: Drawer(
//     child: ListView(
//   children: [
//     DrawerHeader(
//         decoration: BoxDecoration(shape: BoxShape.circle),
//         child: Image.asset(Assets.icons)),
//     Container(
//       child: ListTile(
//         style: ListTileStyle.list,
//         title: const Text("Item 1"),
//         onTap: () {},
//       ),
//     ),
//     ListTile(
//       title: const Text("Item 2"),
//       onTap: () {},
//     ),
//     ListTile(title: const Text("Item 3"), onTap: () {}),
//     ListTile(
//       title: const Text("Item 4"),
//       onTap: () {},
//     ),
//     ListTile(
//       title: const Text("Item 5"),
//       onTap: () {},
//     ),
//     ListTile(title: const Text("Item 6"), onTap: () {}),
//   ],
// )),

    // drawer: NavigationDrawer(),
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const NavigatorDrawerWidget(),
//       appBar: AppBar(
//         title: const Text("GharSubidha"),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//     );
//   }
// }

