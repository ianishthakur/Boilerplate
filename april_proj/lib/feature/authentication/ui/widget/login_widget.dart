import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';
import '../../../../common/route/routes.dart';
import '../../../../common/widget/textfield/login_common_textfield.dart';
import '../../bloc/authentication_cubit.dart';
import '../../bloc/authentication_state.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool checkBox = false;
  bool hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: BlocListener<AuthenticationCubit, AuthState>(
            listener: (context, state) {},
            child: Form(
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Image.asset(Assets.icons, height: 100, width: 150),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Strings.logIn,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Text(
                        Strings.signInText,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  LogInCommonTextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    hintText: Strings.emailHint,
                    prefixIcon: Icon(Icons.email),
                    label: Strings.emailLable,
                  ),
                  SizedBox(height: 15),
                  LogInCommonTextField(
                    controller: passwordController,
                    hintText: Strings.passwordHint,
                    label: Strings.passwordLable,
                    obscureText: hidePassword,
                    validator: (val) {
                      if (val == null) {
                        return Strings.passwordValid;
                      }
                      if (val.length < 8) {
                        return Strings.passwordLength;
                      }
                    },
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        hidePassword = !hidePassword;
                        setState(() {});
                      },
                      child: Icon(hidePassword == true
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Checkbox(
                          value: checkBox,
                          onChanged: (bool? value) {
                            print(value);
                            setState(() {
                              checkBox = value!;
                            });
                          },
                        ),
                      ),
                      Container(
                        child: Text(Strings.remberme,
                            style: TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(width: 40),
                      Container(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            Strings.forgetPassword,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    minWidth: 200,
                    height: 48,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      Strings.loginText,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(Strings.dontHaveAcc),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.singup);
                          },
                          child: Text(
                            Strings.signUp,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
