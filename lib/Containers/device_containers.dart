

import 'package:flutter/material.dart';
Container deviceContainer({required bool isActive, required String text,required context, required String image}) {

    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    double referenceWidth = width / 392.7;
    double referenceHeight = height / 825.5;
    
  return Container(
      width: referenceWidth * 180,
      height: referenceHeight * 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isActive ? Colors.white : Colors.white.withOpacity(0.4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: referenceWidth * 70,
            height: referenceHeight * 70,
          ),
          SizedBox(
            height: referenceHeight * 2,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black)
          ),
        ],
      ),
    );
  }