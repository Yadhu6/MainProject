import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeaCoffee extends StatefulWidget {
  const TeaCoffee({Key? key}) : super(key: key);

  @override
  State<TeaCoffee> createState() => _TeaCoffeeState();
}

class _TeaCoffeeState extends State<TeaCoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Tea'),
            Text('&'),
            Text('Coffee')
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
    );
  }
}
