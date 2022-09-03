import 'package:flutter/material.dart';
import 'package:http/retry.dart';

class FotterWidget extends StatelessWidget {
  final component;
  const FotterWidget({Key? key, this.component}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            component,
            Text(
              'footer',
              style: (TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.green)),
            ),
          ],
        ),
      ),
    ));
  }
}
