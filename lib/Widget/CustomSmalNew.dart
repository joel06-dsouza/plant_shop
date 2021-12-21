// ignore_for_file: no_logic_in_create_state, unnecessary_this, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:plant_shop/UI/Buy/DetailsPage.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop/UI/Buy/DetailsPage2.dart';

class CustomSmalNew extends StatefulWidget {
  final firstTitle, firstImg;
  CustomSmalNew(this.firstTitle, this.firstImg, {Key? key}) : super(key: key);
  @override
  _CustomSmalNewState createState() =>
      _CustomSmalNewState(this.firstTitle, this.firstImg);
}

class _CustomSmalNewState extends State<CustomSmalNew> {
  String firstTitle, firstImg;
  _CustomSmalNewState(this.firstTitle, this.firstImg);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push( 
              context, MaterialPageRoute(builder: (context) => DetailsPage2(firstTitle,firstImg)));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.27,
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
                  firstTitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff686868),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                  top: 8.0,
                  left: 20,
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.18,
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(firstImg),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
