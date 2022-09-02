import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';
import '../../../../common/widget/textfield/signUp_common_textfield.dart';
import '../../bloc/authentication_cubit.dart';
import '../../bloc/authentication_state.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final nameTextController = TextEditingController();
  final parAddressTextController = TextEditingController();
  final secAddressTextController = TextEditingController();
  final phoneNoTextController = TextEditingController();
  final emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: BlocListener<AuthenticationCubit, AuthState>(
            listener: (context, state) {},
            child: Form(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(Assets.icons, height: 100, width: 150),
                      SizedBox(
                        height: 10,
                      ),
                      SignUpCommonTextField(
                        label: Strings.fullName,
                        controller: nameTextController,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        labelText: Strings.enterName,
                      ),
                      SignUpCommonTextField(
                        label: Strings.parmanentAdd,
                        controller: parAddressTextController,
                        prefixIcon: Icon(
                          Icons.location_on_sharp,
                          color: Colors.blue,
                        ),
                        labelText: Strings.enterAdd1,
                      ),
                      SignUpCommonTextField(
                        label: Strings.secondAdd,
                        controller: secAddressTextController,
                        prefixIcon: Icon(
                          Icons.location_on_sharp,
                          color: Colors.blue,
                        ),
                        labelText: Strings.enterAdd2,
                      ),
                      SignUpCommonTextField(
                        label: Strings.phoneNo,
                        controller: phoneNoTextController,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        labelText: Strings.enterPhoneNo,
                      ),
                      SignUpCommonTextField(
                        label: Strings.email,
                        controller: emailTextController,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.blue,
                        ),
                        labelText: Strings.enterEmail,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
