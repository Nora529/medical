import 'package:flutter/material.dart' ;
import 'package:medical_flutter/core/function/NavigateTo.dart';
import 'package:medical_flutter/views/home/ui/cart.dart';
import 'package:medical_flutter/views/profile/ui/edit_profile.dart';
import 'package:medical_flutter/views/profile/ui/widgets/ListTitleforProfile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              children: [
               Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/imgProfile.jpg'),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, Rahul Kanjariya',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Welcome to Nilkanth Medical Store',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            ListTitleforProfile(
              name: 'Edit Profile',
              icon: Icons.edit_note_outlined,
              onTap: () =>NavigatorTo(context, EditProfile()),
            ),
            Divider(),
            ListTitleforProfile(
              name: 'My Orders',
              icon: Icons.description_outlined,
              onTap: () => NavigatorTo(context, Cart()),
            ),
            Divider(),
            ListTitleforProfile(name: 'Billing', icon: Icons.access_time),
            Divider(),
            ListTitleforProfile(name: 'Faq', icon: Icons.help),
            Divider(),
            
          ],
        ),
      ),
    );
  }
}
