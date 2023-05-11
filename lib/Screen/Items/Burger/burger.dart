import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Cartt/Cart_UI.dart';

class Burger extends StatefulWidget {

  const Burger({Key? key}) : super(key: key);

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  var items=['Elk Burger','Veg Burger','Portobello Mushroom Burger','Turkey Burger'];
  var pic=['assets/items/ElkBurger.jpg','assets/items/vegie_burger.jpg',
  'assets/items/portobello_mushroom_burger.jpg','assets/items/TurkeyBurger.jpg'];
  var price=['10','8','18','12'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burgers'),
        actions: [
          IconButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CartItems()));}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
        return ListTile(
          leading:Image(image: NetworkImage(pic[index])) ,
          title: Text(items[index]),
          subtitle: Text('\$${price[index]}') ,
          trailing: ElevatedButton(onPressed: (){}, child: Text('Add to Cart')),
        );
      })
    );
  }
}
