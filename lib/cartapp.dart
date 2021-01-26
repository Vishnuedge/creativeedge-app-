import 'package:flutter/material.dart';

class CartApp extends StatefulWidget {
  @override
  _CartAppState createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.yellowAccent.shade100,
      ),
    );
  }
}