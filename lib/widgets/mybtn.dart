import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String btnTitle;
  final VoidCallback onTap;

  const MyBtn({super.key, required this.btnTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: onTap,
      child: Text(
        btnTitle,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
