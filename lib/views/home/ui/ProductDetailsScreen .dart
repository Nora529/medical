import 'package:flutter/material.dart';
import 'package:medical_flutter/UI_login/widgets/CustomTextButton.dart';
import 'package:medical_flutter/UI_login/widgets/Custom_btn.dart';
import 'package:medical_flutter/core/function/NavigateTo.dart';
import 'package:medical_flutter/views/home/models/cart_data.dart';
import 'package:medical_flutter/views/home/models/cart_item.dart';
import 'package:medical_flutter/views/home/ui/cart.dart';

import 'package:medical_flutter/views/store/ui/store_view.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Image image;
  final String name;
  final String desc;
  final double price;

  const ProductDetailsScreen({
    super.key,
    required this.image,
    required this.name,
    required this.desc,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {

    double oldPrice = price;
    double newPrice = price * 0.9; // 👈 خصم 10%
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StoreView()),
              );
            },
            icon: Icon(Icons.notifications_none_rounded, size: 30),
          ),
          IconButton(
            onPressed: () {
              NavigatorTo(context, StoreView());
            },
            icon: Icon(Icons.shopping_bag_outlined, size: 30),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
         
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            //وصف صغير لي ال كل منتج
            Text(
              'Etiam mollis metus non purus',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: image,
            ),
            SizedBox(height: 20),
            // Text(price, style: TextStyle(fontSize: 24)),
               Row(
              children: [
                Text(
                  '${oldPrice.toStringAsFixed(0)} EGP',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                 const SizedBox(width: 8),
                 Text(
                  '${newPrice.toStringAsFixed(0)} EGP',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
              ),

            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Etiam mollis',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
               
              CustomTextButton(
  text: 'Add to cart',
  onTap: () {
  int index = cartItems.indexWhere(
    (item) => item.name == name,
  );

  if (index != -1) {
    cartItems[index].quantity++;
  } else {
    cartItems.add(
      CartItem(
        name: name,
        price: price,
        image: image,
      ),
    );
  }
}
),

              ],
            ),
            Divider(),
            // Text(
            //   'Package size',
            //   style: TextStyle(
            //     color: Colors.black,
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizedBox(height: 10,),
            Text('product Details',style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal),),
            SizedBox(height: 10,),
            Text('datasaijkdakLEAIUlyeulxnoJGSNLDkjgfygefb eugdlgGEYFHUlf;kdhfaouoereou qio; wyiqy;',style: TextStyle(fontSize: 16,color: Colors.grey),),
             Text('Ingredients',style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.normal),),
             Text('datasaijkdakLEAIUlyeulxnoJGSNLDkjgfygefb eugdlgGEYFHUlf ',style: TextStyle(fontSize: 16,color: Colors.grey),),
              Row(
                children: [
                 Text('Expiry Date',style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.normal),),
                SizedBox(width: 24,),
                Text('25/12/2023',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight:  FontWeight.normal),),
            
                ],
                
              ),
              Row(
                children: [
                  Text('Brand Name',style: TextStyle(fontSize: 20,color: Colors.black ,fontWeight: FontWeight.normal),),
                SizedBox(width: 24,),
                Text('something',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight:  FontWeight.normal),),
            
                ],
              ),
   
              CustomBtn(text: 'GO TO CART', onTap: (){NavigatorTo(context, Cart());})


            
            
          ],
        ),
      ),
    );
  }
}
