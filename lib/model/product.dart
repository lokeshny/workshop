import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier{
  final String id;
  final String title;
  final double price;
  bool isSelected;

  Product({required this.id, required this.title, required this.price, required this.isSelected});
}