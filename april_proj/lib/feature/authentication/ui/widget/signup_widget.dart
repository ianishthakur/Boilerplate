import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';
import '../../../../common/widget/textfield/dropdown_common_textfield.dart';
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
  final passwordTextController = TextEditingController();
  final rePasswordTextController = TextEditingController();
  final contactNoTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final municipalityTextController = TextEditingController();
  final wardTextController = TextEditingController();
  final toleTextController = TextEditingController();

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
                        height: 20,
                      ),
                      SignUpCommonTextField(
                        controller: nameTextController,
                        textInputAction: TextInputAction.next,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        labelText: Strings.enterName,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SignUpCommonTextField(
                        controller: emailTextController,
                        prefixIcon: Icon(
                          Icons.location_on_sharp,
                          color: Colors.blue,
                        ),
                        labelText: Strings.emailHint,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SignUpCommonTextField(
                        controller: contactNoTextController,
                        prefixIcon: Icon(
                          Icons.location_on_sharp,
                          color: Colors.blue,
                        ),
                        labelText: Strings.enterContactNo,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SignUpCommonTextField(
                        controller: passwordTextController,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        labelText: Strings.passwordlabel,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SignUpCommonTextField(
                        controller: rePasswordTextController,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.blue,
                        ),
                        labelText: Strings.rePasswordlabel,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 100,
                        child: DropDownWidget(),
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
