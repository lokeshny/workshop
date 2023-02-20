import 'package:flutter/cupertino.dart';
import 'package:task_app/model/product.dart';

class Products with ChangeNotifier{

  List<Product> items = [
    Product(
      id:'dd',
      title:'Promax',
      price:12000,
      isSelected: true
    ),
    Product(
        id:'dd',
        title:'Pro',
        price:12000,
        isSelected: true
    ),
    Product(
        id:'dd',
        title:'Max',
        price:12000,
        isSelected: true
    ),
    Product(
        id:'dd',
        title:'DoublePro',
        price:12000,
        isSelected: true
    ),

  ];

List<Product> getItems(){
  return items;
}
 int? packageCount(){
  return items.length;
}

}