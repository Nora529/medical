import 'package:flutter/material.dart';
import 'package:medical_flutter/views/home/ui/cart.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Cart(), icon: Icon(Icons.arrow_back)),
        
        title: Text('Check Out'),),
    );
  }
}