import 'package:flutter/material.dart';

ElevatedButton deviceButons(
    {required bool isActive,
    required String text,
    required context,
    required String image,
    required Function sendcmd,
    required String cmd
    }) {
  var size = MediaQuery.of(context).size;
  var height = size.height;
  var width = size.width;
  double referenceWidth = width / 392.7;
  double referenceHeight = height / 825.5;
  

  return ElevatedButton(
    onPressed: () {
      sendcmd(text);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: isActive ? Colors.white : Colors.white.withOpacity(0.5),
      foregroundColor: Colors.green,
      shadowColor: isActive ? Colors.black : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    ),
    child: SizedBox(
      width: referenceWidth * 130,
      height: referenceHeight * 150,
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
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
