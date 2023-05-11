import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Cartt/Cart_UI.dart';

class Juice extends StatefulWidget {
  const Juice({Key? key}) : super(key: key);

  @override
  State<Juice> createState() => _JuiceState();
}

class _JuiceState extends State<Juice> {

  var juices = ['Pineapple', 'Orange', 'Black Grape', 'Carrot', 'Amla'];

  var pics = [
    'assets/items/Pineapple_kaleJuice.jpg',
    'assets/items/Orange_Juice.jpg',
    'assets/items/BlackGrape_Juice.jpg',
    'assets/items/Carrot_Juice.jpg',
    'assets/items/Amla_Juice.jpg'
  ];

  var price=['14','18','20','15','24'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Juices'),
        actions: [
          IconButton(onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CartItems()));}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body:ListView.builder(
          itemCount: juices.length,
          itemBuilder: (context,index){
            return ListTile(
              leading:Image(image: NetworkImage(pics[index])) ,
              title: Text(juices[index]),
              subtitle: Text('\$${price[index]}') ,
              trailing: ElevatedButton(onPressed: (){}, child: Text('Add to Cart')),
            );
          }),
    );
  }
}
