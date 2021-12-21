// ignore_for_file: no_logic_in_create_state, unnecessary_this, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:plant_shop/UI/Buy/DetailsPage3.dart';

class CustomLarghPopular extends StatefulWidget {
  final secondTitle, secondImg;
  CustomLarghPopular(this.secondTitle, this.secondImg, {Key? key}) : super(key: key);
  @override
  _CustomLarghPopularState createState() =>
      _CustomLarghPopularState(this.secondTitle, this.secondImg);
}

class _CustomLarghPopularState extends State<CustomLarghPopular> {
  final secondTitle, secondImg;
  _CustomLarghPopularState(this.secondTitle, this.secondImg);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        bottom: 16,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailsPage3(secondTitle,secondImg)));
        },
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width / 2 - 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.white),
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 10.0,
                left: 12.0,
                right: 8.0,
                child: Text(
                  secondTitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff686868),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                  top: 8.0,
                  left: 16,
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.22,
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(secondImg),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
