import 'package:flutter/material.dart';

import '../../../../../common/constant/strings.dart';

class HelpCenterWidget extends StatefulWidget {
  const HelpCenterWidget({Key? key}) : super(key: key);

  @override
  State<HelpCenterWidget> createState() => _HelpCenterWidgetState();
}

class _HelpCenterWidgetState extends State<HelpCenterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(Strings.helpCenter),
      backgroundColor: Colors.green,
    ));
  }
}
