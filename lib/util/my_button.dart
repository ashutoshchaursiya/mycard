import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  final String IconImagePath;
  final String buttonText;

  const MyButton({
    super.key,
    required this.IconImagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.white, blurRadius: 30, spreadRadius: 10),
              ],
              // color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            height: 90,
            child: Image.asset(IconImagePath),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
