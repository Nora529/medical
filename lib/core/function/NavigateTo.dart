import 'package:flutter/material.dart';

Future<dynamic> NavigatorTo(BuildContext context, Widget view) {
  return Navigator.push(context, MaterialPageRoute(builder: (context) => view));
}
