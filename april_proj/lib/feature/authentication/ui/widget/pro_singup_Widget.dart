import 'dart:io';

import 'package:boilerplate/common/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/route/routes.dart';
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
  final idNumberTextController = TextEditingController();

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

  //I accept checkBox
  bool checkBox = false;

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
                  SizedBox(
                    height: 20,
                  ),
                  SignUpCommonTextField(
                    controller: nameTextController,
                    labelText: Strings.fullName,
                    prefixIcon: Icon(
                      Icons.person_outline,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignUpCommonTextField(
                    controller: emailTextController,
                    labelText: Strings.email,
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignUpCommonTextField(
                    controller: contactNoTextController,
                    labelText: Strings.ContactNo,
                    prefixIcon: Icon(Icons.phone_outlined),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignUpCommonTextField(
                      controller: passwordTextController,
                      prefixIcon: Icon(Icons.lock_open_outlined),
                      labelText: Strings.password),
                  SizedBox(
                    height: 10,
                  ),
                  SignUpCommonTextField(
                      controller: rePasswordTextController,
                      prefixIcon: Icon(Icons.lock_open_outlined),
                      labelText: Strings.confirmPassword),
                  SizedBox(
                    height: 10,
                  ),
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
                            onChanged: (govIdValue) {
                              setState(() {
                                _selectProfession = govIdValue as String;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 145,
                    child: SizedBox(height: 100, child: DropDownWidget()),
                  ),
                  SizedBox(
                    height: 10,
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
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(Strings.selectGovId,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left),
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
                            value: _selectGovId,
                            items: _selectGovIdList
                                .map((e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectGovId = value as String;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(Strings.idImage,
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
                  SizedBox(
                    height: 30,
                  ),
                  SignUpCommonTextField(
                      controller: idNumberTextController,
                      prefixIcon: Icon(Icons.password_outlined),
                      labelText: Strings.idNumber),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(Strings.policeReport,
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
                                icon: Icons.photo_outlined,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(Strings.medicalReport,
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
                                icon: Icons.photo_outlined,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(Strings.expCertificate,
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
                                icon: Icons.photo_outlined,
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 30,
                              child: MaterialButton(
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
                            ),
                            Container(
                              child: GestureDetector(
                                child: Text(Strings.iAccept,
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14)),
                                onTap: () {
                                  setState(() {
                                    checkBox = !checkBox;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: 200,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      MaterialButton(
                                        padding: EdgeInsets.only(left: 10),
                                        onPressed: () {},
                                        child: Text(
                                          Strings.terms,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          Strings.and,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: MaterialButton(
                                          padding: EdgeInsets.only(left: 4),
                                          onPressed: () {},
                                          child: Text(
                                            Strings.privacy,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.proLogin);
                    },
                    color: Colors.green,
                    minWidth: 400,
                    height: 48,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      Strings.register,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(Strings.alreadyHaveAnAcc),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.proLogin);
                          },
                          child: Text(
                            Strings.loginIn,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
            ),
          )),
        ),
      ),
    );
  }
}
