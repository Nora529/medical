import 'package:flutter/material.dart';
import 'package:medical_flutter/UI_login/widgets/CustomTextButton.dart';
import 'package:medical_flutter/core/function/NavigateTo.dart';
import 'package:medical_flutter/core/function/components/searchField.dart';
import 'package:medical_flutter/views/home/ui/list_Diab_Care.dart';
import 'package:medical_flutter/views/home/widgets/CardMedical.dart';
import 'package:medical_flutter/views/home/widgets/categories_list_Icons.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 24,
                              backgroundImage: AssetImage(
                                'images/imgProfile.jpg',
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.card_travel,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Hi, Rahul',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Welcome to Nilkanth Medical Store',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -25,
                left: 20,
                right: 20,
                child: SearchField(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Top Categories',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          CategoriesListIcons(),
          Image.asset('images/imgMed.jpeg'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Deals of the Day',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                CustomTextButton(
                  text: 'more',
                  onTap: () {
                    NavigatorTo(context, ListDiabCare());
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10),

          Row(
            children: [
              CardMedical(
                image: Image.asset('images/images.jpg'),
                text1: '123',
                text2: 'for kids',
                text3: '25EGP',
              ),
              SizedBox(width: 10),
              CardMedical(
                image: Image.asset('images/Image3.jpeg'),
                text1: 'Chicks',
                text2: 'for kids',
                text3: '29EGP',
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              CardMedical(
                image: Image.asset('images/Image5.jpeg'),
                text1: 'Zincomist',
                text2: 'Syrup',
                text3: '50EGP',
              ),
              SizedBox(width: 5),
              CardMedical(
                image: Image.asset('images/Image6.jpeg'),
                text1: 'Congestal',
                text2: 'Syrup',
                text3: '70EGP',
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              CardMedical(
                image: Image.asset('images/Image7.jpeg'),
                text1: 'Slaritine',
                text2: 'Syrup',
                text3: '45EGP',
              ),
              SizedBox(width: 5),
              CardMedical(
                image: Image.asset('images/Image4.jpeg'),
                text1: 'Chicks',
                text2: 'Syrup',
                text3: '39EGP',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
