import 'package:flutter/material.dart';
import 'package:medical_flutter/UI_login/login_view.dart';
import 'package:medical_flutter/views/UI/main_home.dart';
import 'package:medical_flutter/views/home/ui/ProductDetailsScreen%20.dart';
import 'package:medical_flutter/views/home/ui/cart.dart';
import 'package:medical_flutter/views/home/ui/checkOut.dart';
import 'package:medical_flutter/views/home/ui/home_view.dart';
import 'package:medical_flutter/views/home/ui/list_Diab_Care.dart';
import 'package:medical_flutter/views/home/widgets/CategoriesRowDiabete.dart';
import 'package:medical_flutter/views/home/widgets/Distberes_card.dart';
import 'package:medical_flutter/views/profile/ui/edit_profile.dart';

//MN1552006**mn
void main() {
  runApp(const medical());
}

class medical extends StatelessWidget {
  const medical({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home:Checkout() );
  }
}
