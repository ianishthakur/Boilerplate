import 'package:boilerplate/common/widget/ui/fotter_common_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';
import '../../../../common/route/routes.dart';
import '../../../../common/widget/textfield/login_common_textfield.dart';
import '../../bloc/authentication_cubit.dart';
import '../../bloc/authentication_state.dart';

class ProLoginWidget extends StatefulWidget {
  const ProLoginWidget({Key? key}) : super(key: key);

  @override
  State<ProLoginWidget> createState() => _ProLoginWidgetState();
}

class _ProLoginWidgetState extends State<ProLoginWidget> {
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
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          Assets.icons,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          Strings.logIn,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        SizedBox(height: 10),
                        Text(
                          Strings.signInText,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
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
                        SizedBox(height: 30),
                        MaterialButton(
                          onPressed: () {},
                          color: Colors.green,
                          minWidth: 400,
                          height: 48,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            Strings.logInAsProfessional,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 10),
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
