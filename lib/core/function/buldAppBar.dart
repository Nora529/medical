
  import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context,String title) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.lightBlue,
      title: Text(title,style: TextStyle(color: Colors.white),),
     
    );
  }
