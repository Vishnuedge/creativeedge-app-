// import 'dart:js';
import 'package:creative_edge/MyStore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

void main() => runApp(
    ChangeNotifierProvider(
      create: (context){
        return MyStore();
      },
      child: new MaterialApp(
       home: CreativeHome(),
        debugShowCheckedModeBanner: false,
      ),
    )
    );


