import 'package:flutter/material.dart';

class RowButton extends StatelessWidget {
  final void Function()? onTap;
  const RowButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.greenAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
