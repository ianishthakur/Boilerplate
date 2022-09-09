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
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.green))),
        child: InkWell(
          onTap: onPressed,
          child: SizedBox(
            height: 60,
            child: Row(children: [
              Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 20, color: Colors.black54),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
