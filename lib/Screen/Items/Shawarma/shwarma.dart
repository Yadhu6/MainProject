import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shawarma extends StatefulWidget {
  const Shawarma({Key? key}) : super(key: key);

  @override
  State<Shawarma> createState() => _ShawarmaState();
}

class _ShawarmaState extends State<Shawarma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shawarma'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
    );
  }
}
