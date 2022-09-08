// import 'package:flutter/material.dart';

// import '../../constant/strings.dart';
// import '../../route/routes.dart';

// class NavigationDrawer extends StatefulWidget {
//   const NavigationDrawer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<NavigationDrawer> createState() => _NavigationDrawerState();
// }

// class _NavigationDrawerState extends State<NavigationDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[buildHeader(context), buildMenuItems(context)],
//       ),
//     );
//   }

//   Widget buildHeader(BuildContext context) => Container(
//         padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
//       );
// }

// Widget buildMenuItems(BuildContext context) => Container(
//       padding: EdgeInsets.all(24),
//       child: Wrap(
//         runSpacing: 16, //vertical Spacing

//         children: [
//           ListTile(
//             leading: const Icon(Icons.settings),
//             title: const Text(Strings.setting),
//             onTap: () {
//               Navigator.pop(context);
//               Navigator.pushNamed(context, Routes.settings);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.history),
//             title: const Text(Strings.history),
//             onTap: () {
//               Navigator.pushNamed(context, Routes.rewardPoint);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.person_remove_alt_1_outlined),
//             title: const Text(Strings.editProfile),
//             onTap: () {
//               Navigator.pushNamed(context, Routes.inviteUrFrnd);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.point_of_sale_outlined),
//             title: const Text(Strings.rewardPoints),
//             onTap: () {
//               Navigator.pushNamed(context, Routes.history);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.help_center_outlined),
//             title: const Text(Strings.helpCenter),
//             onTap: () {
//               Navigator.pushNamed(context, Routes.helpCenter);
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.share_sharp),
//             title: const Text(Strings.inviteUrFrnd),
//             onTap: () {
//               Navigator.pushNamed(context, Routes.editProfile);
//             },
//           ),
//         ],
//       ),
//     );

import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key,
      required this.name,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(children: [
          Icon(
            icon,
            size: 20,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 40,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 20, color: Colors.grey),
          )
        ]),
      ),
    );
  }
}
