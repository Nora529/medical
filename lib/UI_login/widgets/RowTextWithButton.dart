import 'package:flutter/material.dart';
import 'package:medical_flutter/UI_login/widgets/RowButton.dart';

class RowTextWithButton extends StatelessWidget {
  final String text;
  void Function()? OnTap;
  RowTextWithButton({super.key, required this.text, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        RowButton(onTap: OnTap),
      ],
    );
  }
}
