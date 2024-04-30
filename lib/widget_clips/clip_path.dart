import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models_clip_path/model_clip_path.dart';

class MyClipPath extends StatelessWidget {
  const MyClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Path'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: const FlutterLogo(size: 200),
              ),
            ),
            SizedBox(height: 10),
            ClipPath(
              clipper: MyClipperMoveTo(),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: const FlutterLogo(size: 200),
              ),
            ),
            SizedBox(height: 10),
            ClipPath(
              clipper: MyClipperBezier(),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: const FlutterLogo(size: 200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
