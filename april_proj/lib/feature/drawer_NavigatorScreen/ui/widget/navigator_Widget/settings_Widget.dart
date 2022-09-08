import 'package:flutter/material.dart';

import '../../../../../common/constant/strings.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(Strings.setting),
      backgroundColor: Colors.green,
    ));
  }
}
