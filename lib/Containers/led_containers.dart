import 'package:flutter/material.dart';

Container ledContainer({
  required double isActive,
  required String text,
  required context,
  required Function sendcmd,
  required int none,
}) {
  
  var size = MediaQuery.of(context).size;
  var height = size.height;
  var width = size.width;
  double referenceWidth = width / 392.7;
  double referenceHeight = height / 825.5;

  

  return Container(
    width: referenceWidth * 370,
    height: referenceHeight * 65,
    decoration: BoxDecoration(
        color: isActive == 0 ? Colors.white.withOpacity(0.4) : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10.0),
        )),
    child: Stack(children: [
      Positioned(
        top: referenceHeight * 5,
        left: referenceWidth * 55,
        child: SizedBox(
          width: referenceWidth * 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: referenceHeight * 55,
                trackShape: const RectangularSliderTrackShape(),
                thumbShape: SliderComponentShape.noOverlay,
                overlayShape: SliderComponentShape.noOverlay,
                valueIndicatorShape: SliderComponentShape.noOverlay,
                thumbColor: Colors.transparent,
                activeTickMarkColor: Colors.transparent,
                inactiveTickMarkColor: Colors.transparent,
                inactiveTrackColor: const Color.fromARGB(255, 213, 244, 212),
                activeTrackColor: const Color.fromARGB(255, 77, 207, 224),
              ),
              child: Slider(
                value: isActive,
                min: 0.0,
                max: 250.0,
                onChanged: (value) {
                  int intValue1 = value.toInt();
                  sendcmd("ll$none$intValue1");
                },
              ),
            ),
          ),
        ),
      ),
      Container(
        alignment: Alignment.centerLeft,
        child: Row(children: [
          SizedBox(
            width: referenceWidth * 15,
          ),
          GestureDetector(
            onTap: () {
              if (isActive == 0) {
                sendcmd("ll${none}125");
              } else if (isActive == 125) {
                sendcmd("ll${none}250");
              } else {
                sendcmd("ll${none}0");
              }
            },
            child: Image.asset(
              isActive == 0
                  ? 'assets/images/lamp_off.png'
                  : 'assets/images/lamp.png',
              width: referenceWidth * 35,
              height: referenceHeight * 35,
            ),
          ),
          SizedBox(width: referenceWidth * 15),
          Text(
            text,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black)
          ),
        ]),
      )
    ]),
  );
}
