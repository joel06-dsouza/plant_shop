// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_shop/Widget/CustomLarghAcces.dart';
import 'package:plant_shop/Widget/CustomSmalAcces.dart';

class Accessories extends StatefulWidget {
  const Accessories({Key? key}) : super(key: key);

  @override
  _AccessoriesState createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
  @override
  Widget customBox(String firstTitle, String secondTitle, String firstImg,
      String secondImg) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CustomSmalAcces(firstTitle, firstImg),
          CustomLarghAcces(secondTitle, secondImg),
        ]
      );
  }

    @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView( 
        children: <Widget>[
          customBox(
              "Agricultural Shovel",
              "Hand Fork",
              "https://5.imimg.com/data5/ANDROID/Default/2020/10/QT/GD/IB/84804079/product-jpeg-500x500.jpg",
              "https://media.istockphoto.com/photos/garden-fork-picture-id185073371?k=20&m=185073371&s=612x612&w=0&h=1MThJN8tXz5hr2UM3qo-oPlku6Y47NUzpjTUPI82uAg="
              ),
          customBox(
              "Pick Axe",
              "Garden Rack",
              "https://thumbs.dreamstime.com/b/old-pick-axe-isolated-white-background-old-hoe-97958064.jpg",
              "https://previews.123rf.com/images/aleksangel/aleksangel1703/aleksangel170300007/73556735-garden-rake-agriculture-tool-ground-cultivator-housekeeping-equipment-isolated-white-background-vect.jpg"
            ),
          customBox(
              "Plastic Agricultural Watering Can",
              "Budding Grafting Knife",
              "https://5.imimg.com/data5/HT/LF/MY-16118698/agriculture-water-can-500x500.jpg",
              "https://5.imimg.com/data5/TestImages/UE/NT/TU/SELLER-9605944/budding-grafting-knife-falcon-fbgk-60-500x500.jpg"
              ),
          customBox(
              "Pruning Shear",
              "Hedge Shear",
              "https://thumbs.dreamstime.com/b/garden-secateurs-isolated-white-background-sicator-shears-pruning-bushes-trees-gardeners-summer-spring-219445419.jpg",
              "https://5.imimg.com/data5/JZ/CI/QB/SELLER-86555122/wooden-hedge-shear-garden-equipment-500x500.jpg"
              ),
              SizedBox(
                height: 30.0, 
              ),
        ],
      ),
    ); 
  }
}