
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qq/Constants.dart';
import 'package:qq/colors.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;


  const CustomDialogBox({required this.title, required this.descriptions, required this.text});

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Container(
      width: 300,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: Constants.padding,top: Constants.avatarRadius
                + Constants.padding, right: Constants.padding,bottom: Constants.padding
            ),
            margin: EdgeInsets.only(top: Constants.avatarRadius),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(Constants.padding),
                boxShadow: [
                  BoxShadow(color: Colors.black,offset: Offset(0,10),
                      blurRadius: 10
                  ),
                ]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(widget.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                SizedBox(height: 15,),
                Text(widget.descriptions,style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                SizedBox(height: 22,),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(

                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: colorResource.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(child: Text('Agree', style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        fontSize: 18
                      ),)),
                    ),
                  )
                ),
              ],
            ),
          ),
          Positioned(
            left: Constants.padding,
            right: Constants.padding,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: Constants.avatarRadius,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(Constants.avatarRadius)),
                  child: Image.asset("assets/trophyTall.png", height: 300,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}