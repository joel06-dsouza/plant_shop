// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_shop/Widget/CustomLarghNew.dart';
import 'package:plant_shop/Widget/CustomSmalNew.dart';


class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget customBox(String firstTitle, String secondTitle, String firstImg,
      String secondImg) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CustomSmalNew(firstTitle, firstImg),
          CustomLarghNew(secondTitle, secondImg),
        ]
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView( 
        children: <Widget>[
          customBox(
              "Suncredible Saturn Sunflower",
              "Zinnia Profusion Red Yellow Bicolor",
              "https://i0.wp.com/savvygardening.com/wp-content/uploads/2021/12/suncredible-sunflower.jpg?w=600&ssl=1",
              "https://i2.wp.com/savvygardening.com/wp-content/uploads/2020/12/profusion-red-yellow-bicolor-zinnia.jpg?w=600&ssl=1"
              ),
          customBox(
              "Aurora Borealis rose",
              "The Velvet Fog Smokebush",
              "https://i0.wp.com/savvygardening.com/wp-content/uploads/2019/12/aurora-borealis-rose.jpg?w=600&ssl=1",
              "https://i1.wp.com/savvygardening.com/wp-content/uploads/2019/12/the-velvet-fog.jpg?w=600&ssl=1"
            ),
          customBox(
              "Aquilegia Earlybird",
              "Midnight Cascade blueberry",
              "https://i0.wp.com/savvygardening.com/wp-content/uploads/2019/12/Aquilegia-Earlybird-Red-Yellow.jpg?w=600&ssl=1",
              "https://i1.wp.com/savvygardening.com/wp-content/uploads/2019/12/Midnight_Cascade_blueberry.jpg?w=600&ssl=1"
              ),
          customBox(
              "Echinacea ‘Sweet Sandia’",
              "Lilac New Age™ White",
              "https://i2.wp.com/savvygardening.com/wp-content/uploads/2019/12/Echinacea-Sweet-Sandia.jpg?w=600&ssl=1",
              "https://i0.wp.com/savvygardening.com/wp-content/uploads/2019/12/Lilac-New-Age-White.jpg?w=600&ssl=1"
              ),
              SizedBox(
                height: 30.0, 
              ),
        ],
      ),
    ); 
  }
}