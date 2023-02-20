import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/model/product.dart';

class Quikies extends StatelessWidget {
  String title;
  double price;
  Function(bool?)? checkbox;


  Quikies({required this.title, required this.price, this.checkbox});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.grey)
      ),
      height: 90,
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(product.title,
          style: const TextStyle(
            fontSize: 20
          ),),
          const SizedBox(height: 5,),
          Row(
            children: [
              Text("${product.price}",
              style: const TextStyle(
                fontSize: 16
              ),),
              SizedBox(width: 21),
              Checkbox(value: false, onChanged: checkbox,
              )
            ],

          ),

        ],
      ),
    );
  }
}
