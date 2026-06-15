import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final String text;


  void Function()? onTap;
  CustomBtn({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onTap,
      child: Padding(padding: const EdgeInsets.all(10.0), child: Text(text)),
    );
  }
}
