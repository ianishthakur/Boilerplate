import 'package:boilerplate/common/widget/textfield/common_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../common/constant/strings.dart';

class LoginWidget extends StatefulWidget {
  LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
    bool hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(Strings.hello),
          Text(Strings.welcomeBack),
          CommonTextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: Strings.emailHint,
            prefixIcon: Icon(Icons.email),
            label: Strings.emailLable,
          ),
          SizedBox(height: 15),
          CommonTextField(
            controller: passwordController,
            label: Strings.passwordLable,
            obscureText: hidePassword,
            validator: (val) {
              if (val == null) {
                return "Password must be valid";
              }
              if (val.length < 8) {
                return "Password must be 8 characters long";
              }
            },
            prefixIcon: Icon(Icons.lock),
            suffixIcon: InkWell(
                onTap: () {
                  hidePassword = !hidePassword;
                  setState(() {});
                },
                child: Text(hidePassword ==true ? Strings.show:Strings.hide),
          ),
          ),
          Text(Strings.forgetPassword,),

          MaterialButton(onPressed: (){},
          color: Colors.green,
          minWidth: 200,
          height: 48,
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
          child: Text(Strings.loginText,
          style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
          Text(Strings.createdAccount),

        ]
          ),
      ),
      
      );
    
  }
}
