import 'package:flutter/material.dart';

class ListTitleforProfile extends StatelessWidget {
  final String name;
  final IconData icon;
  //ontap
  final void Function()? onTap;

  const ListTitleforProfile({
    super.key,
    required this.name,
    required this.icon, 
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue, size: 40),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 20),
      onTap: onTap,
    );
  }
}
