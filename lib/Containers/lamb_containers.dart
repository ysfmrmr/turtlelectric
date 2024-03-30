import 'package:flutter/material.dart';

Container lambContainer(
    {required bool isActive,
    required String text,
    required context,}) {
  var size = MediaQuery.of(context).size;
  var height = size.height;
  var width = size.width;
  double referenceWidth = width / 392.7;
  double referenceHeight = height / 825.5;

  return Container(
      alignment: Alignment.centerLeft,
      height: referenceHeight * 65,
      width: referenceWidth * 180,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(children: [
        SizedBox(
          width: referenceWidth * 15,
        ),
        Image.asset(
          isActive ? 'assets/images/lamp.png' : 'assets/images/lamp_off.png',
          width: referenceWidth * 35,
          height: referenceHeight * 35,
        ),
        SizedBox(width: referenceWidth * 5),
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black)
        ),
      ]));
}
