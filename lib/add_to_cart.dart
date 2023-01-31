import 'package:flutter/material.dart';

import 'items.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  List<Items> items = [
    Items(
      name: 'Men\'s Round Neck Half Sleeve Regular Fit Printed T-Shirt',
      amount: '399',
    ),
    Items(
        name: 'Men\'s Round Neck Half Sleeve Regular Fit Printed T-Shirt',
        amount: '399'),
    Items(
        name: 'Men\'s Round Neck Half Sleeve Regular Fit Printed T-Shirt',
        amount: '399'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
