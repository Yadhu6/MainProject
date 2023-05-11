import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Cartt/Cart_UI.dart';

class Icecream extends StatefulWidget {


  @override
  State<Icecream> createState() => _IcecreamState();
}

class _IcecreamState extends State<Icecream> {

  var pic=['assets/items/Sherbet_icecream.webp','assets/items/Rolled_IceCream.webp',
  'assets/items/Gelato_icecream.webp','assets/items/Frozen_Yogurt_icecream.webp'];

  var rate=['15','10','12','20'];

  var name=['Sherbet','Rolled','Gelato','Frozen Yogurt'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icecreams'),
        actions: [
          IconButton(onPressed: (){ Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CartItems()));}, icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
        body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context,index){
              return ListTile(
                leading:Image(image: NetworkImage(pic[index])) ,
                title: Text(name[index]),
                subtitle: Text('\$${rate[index]}') ,
                trailing: ElevatedButton(onPressed: (){}, child: Text('Add to Cart')),
              );
            })
    );
  }
}
