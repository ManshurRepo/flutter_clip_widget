import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clip RRect'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft, // Menempatkan widget di sisi kiri
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.blue,
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(10),
                        left: Radius.elliptical(50, 10)),
                    child: Container(
                      height: 190,
                      width: 190,
                      color: Colors.blue,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
