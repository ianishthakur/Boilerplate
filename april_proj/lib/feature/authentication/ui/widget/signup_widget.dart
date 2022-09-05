import 'dart:io';

import 'package:boilerplate/common/widget/textfield/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

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
  //Signup Text Field
  final nameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final rePasswordTextController = TextEditingController();
  final contactNoTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final municipalityTextController = TextEditingController();
  final wardTextController = TextEditingController();
  final toleTextController = TextEditingController();

  //ImagePicker Text Field
  File? _image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this._image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick image:$e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
                  child: Container(
                    width: width,
                    height: height,
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
                          height: 10,
                        ),
                        SizedBox(height: 150, child: DropDownWidget()),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: double.infinity,
                          child: Text(Strings.selectProfilePic,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.left),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: ImagePickerCommonText(
                                      label: Strings.uploadImage,
                                      icon: Icons.image_outlined,
                                      onClick: () =>
                                          pickImage(ImageSource.gallery),
                                    ),
                                  ),
                                  Container(
                                    child: ImagePickerCommonText(
                                      label: Strings.takePhoto,
                                      icon: Icons.camera_alt_outlined,
                                      onClick: () =>
                                          pickImage(ImageSource.camera),
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
    ));
  }
}
