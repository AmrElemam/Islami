import 'package:flutter/material.dart';

class HadethContent extends StatelessWidget {
  String content;

  HadethContent(this.content, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: const Color(0xCCF8F8F8),
                borderRadius: BorderRadius.circular(25)),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Text(
                content,
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
