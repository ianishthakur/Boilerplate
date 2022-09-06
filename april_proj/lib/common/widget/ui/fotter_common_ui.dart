import 'package:flutter/material.dart';
import 'package:http/retry.dart';

class FotterWidget extends StatelessWidget {
  final component;
  const FotterWidget({Key? key, this.component}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              component,
              Text(
                'Footer',
                style: (TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.green)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
