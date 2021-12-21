// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:plant_shop/Widget/CustomLarghPlants.dart';
import 'package:plant_shop/Widget/CustomSmalPlants.dart';
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  Widget customBox(String firstTitle, String secondTitle, String firstImg,
      String secondImg) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CustomSmalPlants(firstTitle, firstImg),
          CustomLarghPlants(secondTitle, secondImg),
        ]
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView( 
        children: <Widget>[
          customBox(
              "Peace Lily (Spathiphyllum)",
              "Aloe Vera (barbadensis)",
              "http://plantdecors.com/wp-content/uploads/2017/11/Peace-Lilly-indoor-876x1024.jpg",
              "https://plantdecors.com/blogs/wp-content/uploads/2018/03/Aloe-vera-indoor.jpg"
              ),
          customBox(
              "Lucky bamboo plant ( Dracaena braunii)",
              "Ferns ( Pteridophytes)",
              "https://plantdecors.com/wp-content/uploads/2018/05/Lucky-Bamboo-long.jpg",
              "https://plantdecors.com/blogs/wp-content/uploads/2018/03/Boston-Fern-Plant-in-a-Pot-1.jpg"
            ),
          customBox(
              "Chinese Evergreen (Aglaonema Commutatum)",
              "Grape Ivy (Parthenocissus Tricuspidata)",
              "https://s3.amazonaws.com/eit-planttoolbox-prod/media/images/Aglaonema_commutatum_xZ0WrHLfEm0i.jpe",
              "https://previews.123rf.com/images/westhimal/westhimal1608/westhimal160800470/63538332-parthenocissus-tricuspidata-japanese-creeper-grape-ivy-japanese-ivy-woody-creeper-with-3-lobed-leave.jpg"
              ),
          customBox(
              "Areca palm (Dypsis lutescens)",
              "Money Plant (Epipremnum aureum)",
              "https://www.gardeningknowhow.com/wp-content/uploads/2013/01/areca-palm.jpg",
              "https://5.imimg.com/data5/HC/BM/YA/SELLER-39609937/money-plant-500x500.jpg"
              ),
              SizedBox(
                height: 30.0, 
              ),
        ],
      ),
    ); 
  }
}
