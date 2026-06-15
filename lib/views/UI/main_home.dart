import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medical_flutter/views/addProduct/ui/add_product_view.dart';
import 'package:medical_flutter/views/home/ui/home_view.dart';
import 'package:medical_flutter/views/nav_bar/logic/cubit/nav_bar_cubit.dart';

import 'package:medical_flutter/views/notification/ui/notification_view.dart';
import 'package:medical_flutter/views/profile/ui/profile_view.dart';
import 'package:medical_flutter/views/store/ui/store_view.dart';

class MainHome extends StatelessWidget {
  final List<Widget> views = [
    HomeView(),
    NotificationView(),
    AddProductView(),
    StoreView(),
    ProfileView(),
  ];

  MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          NavBarCubit cubit = context.read<NavBarCubit>();
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(child: views[cubit.currentIndex]),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GNav(
                onTabChange: (index) {
                  cubit.changeCurrentIndex(index);
                },

                color: Colors.grey,
                tabs: [
                  GButton(icon: Icons.home),
                  GButton(icon: Icons.notifications_on_rounded),
                  GButton(icon: Icons.add_box_rounded),
                  GButton(icon: Icons.card_travel),
                  GButton(icon: Icons.person),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
