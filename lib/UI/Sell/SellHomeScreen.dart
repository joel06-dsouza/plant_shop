// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_shop/Model/style.dart';

class SellHomeScreen extends StatefulWidget {
  @override
  _SellHomeScreenState createState() => _SellHomeScreenState();
}

class _SellHomeScreenState extends State<SellHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF9AF054),
        body: ListView(
          children: <Widget>[
            Center(            
              child: Text("The Feature is in Development.", style: ThemeText.titleText)
          )
        ],
        ),
        
      ),
    );
  }
}