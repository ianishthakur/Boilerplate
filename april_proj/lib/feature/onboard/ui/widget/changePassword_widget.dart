import 'package:boilerplate/common/widget/textfield/signUp_common_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({Key? key}) : super(key: key);

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  final enterPasswordController = TextEditingController();
  final reEnterPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final changePasswordWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            width: changePasswordWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Image.asset(
                    Assets.icons,
                    height: 125,
                    width: 125,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    Strings.createPassword,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                    child: Column(
                      children: [
                        SignUpCommonTextField(
                          prefixIcon: Icon(Icons.lock_outline),
                          controller: enterPasswordController,
                          label: Strings.enterYourNewPassword,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          labelText: Strings.changePasswordlabel,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                    child: Column(
                      children: [
                        SignUpCommonTextField(
                          controller: reEnterPasswordController,
                          label: Strings.reEnterYourNewPassword,
                          prefixIcon: Icon(Icons.lock_outline),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          labelText: Strings.reChangePasswordlabel,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    minWidth: 150,
                    height: 48,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      Strings.savePassword,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
