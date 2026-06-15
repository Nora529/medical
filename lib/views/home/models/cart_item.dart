import 'package:flutter/material.dart';

class CartItem {
  final String name;
  final double price;
  final Image image;
  int quantity;

  CartItem({
    required this.name,
    required this.price,
    required this.image,
    this.quantity = 1,
  });
}