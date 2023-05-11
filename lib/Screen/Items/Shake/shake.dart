import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shake extends StatefulWidget {
  const Shake({Key? key}) : super(key: key);

  @override
  State<Shake> createState() => _ShakeState();
}

class _ShakeState extends State<Shake> {
  var shakes = ['Mocha', 'Strawberry', 'Chocolate', 'Banana'];

  var rate = ['40', '45', '39.5', '35'];

  var spic = [
    'assets/items/mocha_shake.png',
    'assets/items/strawberry_shake.png',
    'assets/items/chocolate_shake.jpg',
    'assets/items/banana_milkshake.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shakes'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: ListView.builder(
          itemCount: shakes.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image(image: NetworkImage(spic[index])),
              title: Text(shakes[index]),
              subtitle: Text('\$${rate[index]}'),
              trailing:
                  ElevatedButton(onPressed: () {}, child: Text('Add to Cart')),
            );
          }),
    );
  }
}
