import 'package:flutter/material.dart';

class MyClipRect extends StatelessWidget {
  const MyClipRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Rect'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Center(
              child: ClipRect(
                child: Align(
                  alignment: Alignment.topRight,
                  heightFactor: 0.75,
                  widthFactor: 0.5,
                  child: FlutterLogo(size: 300),
                ),
              ),
            ),
            SizedBox(height: 50),
            FlutterLogo(
              size: 200,
            )
          ],
        ),
      ),
    );
  }
}
