import 'package:flutter/material.dart';
import 'package:medical_flutter/core/function/NavigateTo.dart';
import 'package:medical_flutter/views/home/ui/home_view.dart';
import 'package:medical_flutter/views/home/widgets/CardMedical.dart';
import 'package:medical_flutter/views/home/widgets/Distberes_card.dart';
import 'package:medical_flutter/views/home/widgets/categories_list_Icons.dart';

class ListDiabCare extends StatelessWidget {
  const ListDiabCare({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diabetes Care"),
        leading:  IconButton(onPressed: ()=>NavigatorTo(context, HomeView()), icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            /// Title
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 15),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DistberesCard(
                    imagePath: 'images/image16.png',
                    text: 'Suger',
                  ),

                  SizedBox(width: 10),
                  DistberesCard(
                    imagePath: 'images/Image13.jpeg',
                    text: 'Suger Substitute',
                  ),
                  SizedBox(width: 10),
                  DistberesCard(
                    imagePath: 'images/image15.png',
                    text: 'Juices & Vinegars',
                  ),
                  DistberesCard(
                    imagePath: 'images/iamge14.jpg',
                    text: 'Vitamins Medicines',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'All Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                CardMedical(
                  image: Image.asset('images/Image3.jpeg'),
                  text1: 'Accu-check Active',
                  text2: 'Test ',
                  text3: '120EGP',
                ),
                SizedBox(width: 5),
                CardMedical(
                  image: Image.asset('images/image16.png'),
                  text1: 'text1',
                  text2: 'text2',
                  text3: '200EGP',
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                CardMedical(
                  image: Image.asset('images/Image3.jpeg'),
                  text1: 'Accu-check Active',
                  text2: 'Test ',
                  text3: '120EGP',
                ),
                SizedBox(width: 5),
                CardMedical(
                  image: Image.asset('images/image16.png'),
                  text1: 'text1',
                  text2: 'text2',
                  text3: '200EGP',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
