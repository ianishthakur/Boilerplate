import 'package:boilerplate/common/widget/ui/fotter_common_ui.dart';
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
    return FotterWidget(
      component: SingleChildScrollView(
        child: SafeArea(
          child: BlocListener<AuthenticationCubit, AuthState>(
            listener: (context, state) {},
            child: Form(
              child: Column(
                children: [
                  Column(
                    children: [
                      Image.asset(Assets.icons, height: 100, width: 100),
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
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  LogInCommonTextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    hintText: Strings.emailHint,
                    prefixIcon: Icon(Icons.email_outlined),
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
                    prefixIcon: Icon(Icons.lock_outline),
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
                      MaterialButton(
                        onPressed: () {},
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
                      GestureDetector(
                        child: Text(Strings.remberme,
                            style: TextStyle(color: Colors.grey)),
                        onTap: () {
                          setState(() {
                            checkBox = !checkBox;
                          });
                        },
                      ),
                      Container(
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.forgotPassword);
                          },
                          child: Text(
                            Strings.forgotPassword,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.green,
                    minWidth: 400,
                    height: 48,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      Strings.logInAsCostomer,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        height: 48,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(Strings.notRegistered),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, Routes.singup);
                                    },
                                    child: Text(
                                      Strings.registerAsCostomer,
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  child: Text(Strings.workWithUs),
                                ),
                                SizedBox(
                                  height: 32,
                                  child: Container(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, Routes.proSignup);
                                      },
                                      child: Text(
                                        Strings.registerAsProfessional,
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(Strings.or),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 100,
                              height: 32,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, Routes.proLogin);
                                },
                                child: Text(
                                  Strings.logInHere,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
