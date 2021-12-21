// ignore_for_file: prefer_const_constructors

import 'package:plant_shop/UI/Buy/BuyHomeScreen.dart';
import 'package:plant_shop/UI/HomePage.dart';
import 'package:plant_shop/UI/Sell/SellHomeScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'Plant Shop',
    debugShowCheckedModeBanner: false, 
     initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),  
            '/sellpage': (context) => SellHomeScreen(),
            '/buypage': (context) => BuyHomeScreen(),            
          },
  )
 );
} 