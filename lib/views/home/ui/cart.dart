import 'package:flutter/material.dart';
import 'package:medical_flutter/UI_login/widgets/Custom_btn.dart';
import 'package:medical_flutter/core/function/NavigateTo.dart';
import 'package:medical_flutter/views/home/models/cart_data.dart';
import 'package:medical_flutter/views/home/ui/list_Diab_Care.dart';
import 'package:medical_flutter/views/store/ui/store_view.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  double get subtotal {
    return cartItems.fold(
      0,
      (sum, item) => sum + (item.price * item.quantity),
    );
  }

  double get itemDiscount => subtotal * 0.1;

  double couponDiscount = 15;

  double get total {
    return subtotal - itemDiscount - couponDiscount;
  }

  Widget buildRow(
    String title,
    String value, {
    bool isBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color:
                  isBold ? Colors.black : Colors.grey,
              fontSize: isBold ? 18 : 14,
              fontWeight: isBold
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isBold ? 18 : 14,
              fontWeight: isBold
                  ? FontWeight.bold
                  : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            /// Header
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${cartItems.length} Items in your cart',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {
                    NavigatorTo(
                      context,
                      const ListDiabCare(),
                    );
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('Add more'),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// Products
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];

                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color:
                              Colors.grey.shade300,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        /// Image
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: item.image,
                        ),

                        const SizedBox(width: 15),

                        /// Product Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                            children: [
                              Text(
                                item.name,
                                style:
                                    const TextStyle(
                                  fontSize: 18,
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                ),
                              ),

                              const SizedBox(
                                height: 8,
                              ),

                              Text(
                                '${item.price} EGP',
                                style:
                                    const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// Delete + Quantity
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  cartItems.removeAt(
                                    index,
                                  );
                                });
                              },
                              icon: const Icon(
                                Icons.close,
                                color:
                                    Colors.grey,
                              ),
                            ),

                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (item
                                              .quantity >
                                          1) {
                                        item.quantity--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons
                                        .remove_circle_outline,
                                  ),
                                ),

                                Text(
                                  '${item.quantity}',
                                  style:
                                      const TextStyle(
                                    fontSize: 18,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      item.quantity++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons
                                        .add_circle_outline,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

          
            /// Payment Summary
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
            
                children: [
                  const Align(
                    alignment:
                        Alignment.centerLeft,
                    child: Text(
                      "Payment Summary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),
              
                  const SizedBox(height: 15),
              
                  buildRow(
                    "Order Total",
                    subtotal.toStringAsFixed(2),
                  ),
              
                  buildRow(
                    "Items Discount",
                    "- ${itemDiscount.toStringAsFixed(2)}",
                  ),
              
                  buildRow(
                    "Coupon Discount",
                    "- ${couponDiscount.toStringAsFixed(2)}",
                  ),
              
                  buildRow(
                    "Shipping",
                    "Free",
                  ),
              
                  const Divider(),
              
                  buildRow(
                    "Total",
                    total.toStringAsFixed(2),
                    isBold: true,
                  ),
              
                  const SizedBox(height: 20),
                  CustomBtn(text: 'Place Order', onTap: (){NavigatorTo(context, StoreView());})
              
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}