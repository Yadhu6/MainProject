import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItems extends StatefulWidget {
  const CartItems({Key? key}) : super(key: key);

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.orange[300],
title: Text('Item Cart',style: GoogleFonts.anekGurmukhi(fontSize: 22),),
    centerTitle: true
),
    );
  }
}
