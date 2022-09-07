import 'dart:io';

import 'package:boilerplate/common/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/widget/textfield/dropdown_common_textfield.dart';
import '../../../../common/widget/textfield/profileImage_picker.dart';
import '../../../../common/widget/textfield/signUp_common_textfield.dart';

class ProSignUpWidget extends StatefulWidget {
  const ProSignUpWidget({Key? key, this.value, this.govIdValue})
      : super(key: key);
  final String? value;
  final String? govIdValue;

  @override
  State<ProSignUpWidget> createState() => _ProSignUpWidgetState();
}

class _ProSignUpWidgetState extends State<ProSignUpWidget> {
  //Pro SignUp Page
  final nameTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final rePasswordTextController = TextEditingController();
  final contactNoTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final municipalityTextController = TextEditingController();
  final wardTextController = TextEditingController();
  final toleTextController = TextEditingController();

  //DropDown Page

  _ProSignUpWidgetState() {
    //professional
    _selectProfession = _professionList[0];

    //selectGovID
    _selectGovId = _selectGovIdList[0];
  }
  String? _selectProfession = "";
  final _professionList = DropDown.professionList;
  String? _selectGovId = "";
  final _selectGovIdList = DropDown.selectGovIdList;

  //DocImage Picker
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
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: (SingleChildScrollView(
            child: Form(
              child: (Column(
                children: [
                  Image.asset(
                    Assets.icons,
                    height: 100,
                    width: 100,
                  ),
                  SignUpCommonTextField(
                      controller: nameTextController,
                      labelText: Strings.fullName,
                      prefixIcon: Icon(
                        Icons.person_outline,
                      )),
                  SignUpCommonTextField(
                    controller: emailTextController,
                    labelText: Strings.email,
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  SignUpCommonTextField(
                    controller: contactNoTextController,
                    labelText: Strings.ContactNo,
                    prefixIcon: Icon(Icons.phone_outlined),
                  ),
                  SignUpCommonTextField(
                      controller: passwordTextController,
                      prefixIcon: Icon(Icons.lock_open_outlined),
                      labelText: Strings.password),
                  SignUpCommonTextField(
                      controller: rePasswordTextController,
                      prefixIcon: Icon(Icons.lock_open_outlined),
                      labelText: Strings.confirmPassword),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        Strings.profession,
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.5),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: SizedBox(
                          height: 58,
                          child: DropdownButton(
                            iconSize: 34,
                            iconEnabledColor: Colors.blue,
                            isExpanded: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            value: _selectProfession,
                            items: _professionList
                                .map((e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectProfession = value as String;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Container(
                          child: Text(
                            Strings.province,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          Strings.district,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 145,
                    child: SizedBox(height: 100, child: DropDownWidget()),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(Strings.selectProfilePic,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: ImagePickerCommonText(
                                label: Strings.uploadImage,
                                icon: Icons.image_outlined,
                                onClick: () => pickImage(ImageSource.gallery),
                              ),
                            ),
                            Container(
                              child: ImagePickerCommonText(
                                label: Strings.takePhoto,
                                icon: Icons.camera_alt_outlined,
                                onClick: () => pickImage(ImageSource.camera),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(Strings.selectGovId,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(top: 6.0),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(5.5),
                  //     border: Border.all(color: Colors.blue),
                  //   ),
                  //   child: DropdownButtonHideUnderline(
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 6.0),
                  //       child: SizedBox(
                  //         height: 58,
                  //         child: DropdownButton(
                  //           iconSize: 34,
                  //           iconEnabledColor: Colors.blue,
                  //           isExpanded: true,
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 14,
                  //           ),
                  //           value: _selectGovId,
                  //           items: _selectGovIdList
                  //               .map((e) => DropdownMenuItem(
                  //                     child: Text(e),
                  //                     value: e,
                  //                   ))
                  //               .toList(),
                  //           onChanged: (value) {
                  //             setState(() {
                  //               _selectGovId = value as String;
                  //             });
                  //           },
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              )),
            ),
          )),
        ),
      ),
    );
  }
}
