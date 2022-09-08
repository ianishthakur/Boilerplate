import 'package:flutter/material.dart';

import '../../../../../common/constant/strings.dart';

class InviteUrFrndWidget extends StatefulWidget {
  const InviteUrFrndWidget({Key? key}) : super(key: key);

  @override
  State<InviteUrFrndWidget> createState() => _InviteUrFrndWidgetState();
}

class _InviteUrFrndWidgetState extends State<InviteUrFrndWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(Strings.inviteUrFrnd),
      backgroundColor: Colors.green,
    ));
  }
}
