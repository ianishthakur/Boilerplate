import 'package:flutter/material.dart';

import '../../../../../common/constant/strings.dart';

class RewardPointWidget extends StatefulWidget {
  const RewardPointWidget({Key? key}) : super(key: key);

  @override
  State<RewardPointWidget> createState() => _RewardPointWidgetState();
}

class _RewardPointWidgetState extends State<RewardPointWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(Strings.rewardPoints),
      backgroundColor: Colors.green,
    ));
  }
}
