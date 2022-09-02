import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../common/constant/assets.dart';
import '../../../../common/constant/strings.dart';
import '../../../../common/route/routes.dart';

class SelectLanguageWidget extends StatefulWidget {
  const SelectLanguageWidget({Key? key}) : super(key: key);

  @override
  State<SelectLanguageWidget> createState() => _SelectLanguageWidgetState();
}

class _SelectLanguageWidgetState extends State<SelectLanguageWidget> {
  @override
  Widget build(BuildContext context) {
    final langwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: (Scaffold(
        body: Center(
          child: Container(
              width: langwidth,
              padding: EdgeInsets.symmetric(vertical: 80),
              child: Column(
                children: [
                  Image.asset(
                    Assets.icons,
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(height: 80),
                  Container(
                    // color: Colors.amber,
                    height: 200,
                    width: 300,
                    child: Column(
                      children: [
                        Text(
                          Strings.selectLang,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.onboarding);
                          },
                          color: Colors.blue,
                          minWidth: 250,
                          height: 48,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            Strings.english,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.onboarding);
                          },
                          color: Colors.green,
                          minWidth: 250,
                          height: 48,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            Strings.nepali,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      )),
    );
  }
}
