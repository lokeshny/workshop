import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/model/product.dart';

import '../model/products.dart';
import '../widget/quikies_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {
    final productsData =Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Menus'),
      ),
      body: Container(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
             const Text('Get tenant quikies',
            style: TextStyle(

              color: Colors.grey,
              fontSize: 20
            ),),
            SizedBox(height: 10),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3 / 2),
                itemCount: productsData.items.length,
                itemBuilder: (context, i) => ChangeNotifierProvider.value(
                  //  create: (context) => products[i] ,
                    value: productsData.items[i],
                    child: Quikies(title: productsData.items[i].title, price: productsData.items[i].price,),
                ) ),
            Text('Benifits provided'),


          ],
        ),
      ),
    );
  }
}
