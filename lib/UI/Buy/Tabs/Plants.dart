// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_shop/Widget/CustomLarghPopular.dart';
import 'package:plant_shop/Widget/CustomSmalPopular.dart';

class Plants extends StatefulWidget {
  const Plants({Key? key}) : super(key: key);

  @override
  _PlantsState createState() => _PlantsState();
}

class _PlantsState extends State<Plants> {
  @override
    Widget customBox(String firstTitle, String secondTitle, String firstImg,
      String secondImg) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CustomSmalPopular(firstTitle, firstImg),
          CustomLarghPopular(secondTitle, secondImg),
        ]
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView( 
        children: <Widget>[
          customBox(
              "Artificial potted Plants",
              "Ageratum houstonianum",
              "https://www.ikea.com/in/en/images/products/fejka-artificial-potted-plant-thyme__0748919_pe745319_s5.jpg?f=xs",
              "https://www.kindpng.com/picc/b/126/1264488.png"
              ),
          customBox(
              "Alyssum - Sweet Alyssum.",
              "Alstroemeria - Peruvian LIly.",
              "https://www.kindpng.com/picc/b/69/691139.png",
              "https://www.kindpng.com/picc/b/664/6644412.png"
            ),
          customBox(
              "Antirrhinum majus",
              "Asclepias syriaca",
              "https://www.kindpng.com/picc/b/69/691734.png",
              "https://www.kindpng.com/picc/b/69/691281.png"
              ),
          customBox(
              "African Daisy. Gazania",
              "Aconitum Ranunculus Family",
              "https://www.kindpng.com/picc/b/149/1499548.png",
              "https://www.kindpng.com/picc/b/622/6220384.png"
              ),
              SizedBox(
                height: 30.0, 
              ),
        ],
      ),
    ); 
  }      
}