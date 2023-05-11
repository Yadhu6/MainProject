import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainproject/Screen/Items/Juice/juice.dart';
import 'package:mainproject/Screen/Items/Shake/shake.dart';
import 'package:mainproject/Screen/Items/Shawarma/shwarma.dart';
import 'Cartt/Cart_UI.dart';
import 'Items/Burger/burger.dart';
import 'Items/Icecream/icecream.dart';
import 'Items/Tea&Coffee/tea&coffee.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuBackgroundColor: Colors.purpleAccent,
      showShadow: true,
      menuScreen: MenuScreen(),
      mainScreen: Mainscreen(),
    );
  }
}

class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          drawerlist(Icons.home, 'Home'),
          drawerlist(Icons.shopping_cart, 'Cart'),
          drawerlist(Icons.person, 'Profile'),
          drawerlist(Icons.send, 'Send Offer'),
          drawerlist(Icons.notifications_active, 'Notifications'),
        ],
      ),
    );
  }

  Widget drawerlist(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(icon),
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class Mainscreen extends StatefulWidget {
  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          "MENU",
          style: GoogleFonts.amiri(color: Colors.red, fontSize: 40),
        ),
        centerTitle: true,
        leading: Drawerslide(),
        actions: [
          // Badge(
          //   badgeContent: Consumer<CartProvider>(
          //     builder: (context, value, child) {
          //       return Text(
          //         value.getCounter().toString(),
          //         style: const TextStyle(
          //             color: Colors.white, fontWeight: FontWeight.bold),
          //       );
          //     },
          //   ),
          //   //position: BadgePosition(start: 30, bottom: 30),
          //   child:
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartItems()));
              },
              icon: const Icon(Icons.shopping_cart,color: Colors.green,),
            ),
          //),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Container(
       // color: Colors.green,
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: [
          Card(
            child: Column(
              children: [
                Container(
                    height: 100,
                    width: double.infinity,
                    child: Image(image: NetworkImage('assets/image/burger.jpg'),fit: BoxFit.fitWidth,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Burger()));}, child: Text('Burgers')),
                )
              ],
            ),
          ),
          Card(child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Image(image: NetworkImage('assets/image/icecream.jpg'),fit: BoxFit.fitWidth,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Icecream()));
                }, child: Text('IceCreams')),
              )
            ],
          ),),
          Card(child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Image(image: NetworkImage('assets/image/juice.jpg'),fit: BoxFit.fitWidth,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Juice()));
                }, child: Text('Juices')),
              )
            ],
          ),),
          Card(child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Image(image: NetworkImage('assets/image/shake.jpg'),fit: BoxFit.fitWidth,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shake()));
                }, child: Text('Shakes')),
              )
            ],
          ),),
          Card(child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Image(image: NetworkImage('assets/image/shawarma.jpg'),fit: BoxFit.fitWidth,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shawarma()));
                }, child: Text('Shawarma')),
              )
            ],
          ),),
          Card(child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Image(image: NetworkImage('assets/image/tea.jpg'),fit: BoxFit.fitWidth,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TeaCoffee()));
                }, child: Text('Hot')),
              )
            ],
          ),),

        ],
        ),
      ),
    );
  }
}

class Drawerslide extends StatefulWidget {
  const Drawerslide({Key? key}) : super(key: key);

  @override
  State<Drawerslide> createState() => _DrawerslideState();
}

class _DrawerslideState extends State<Drawerslide> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          ZoomDrawer.of(context)!.toggle();
        },
        icon: Icon(Icons.menu));
  }
}
