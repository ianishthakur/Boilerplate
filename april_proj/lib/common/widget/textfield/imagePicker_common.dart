import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import '../../constant/strings.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
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
    return Scaffold(
      body: Column(
        children: [
          CustomButton(
            title: Strings.uploadImage,
            icon: Icons.image_outlined,
            onClick: () => pickImage(ImageSource.gallery),
          ),
          CustomButton(
            title: Strings.takePhoto,
            icon: Icons.camera_alt_outlined,
            onClick: () => pickImage(ImageSource.camera),
          )
        ],
      ),
    );
  }
}

Widget CustomButton({
  required String title,
  required IconData icon,
  required VoidCallback onClick,
}) {
  return Container(
      height: 200,
      width: 200,
      child: ElevatedButton(
        onPressed: onClick,
        child: Row(children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Text(title),
        ]),
      ));
}
