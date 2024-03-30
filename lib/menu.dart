// ignore_for_file: depend_on_referenced_packages, unused_import, avoid_print, collection_methods_unrelated_type
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:turtlelectric/Get/bools.dart';
import 'package:turtlelectric/Get/strings.dart';
import 'package:turtlelectric/Containers/device_containers.dart';

SwitchController switchController = Get.put(SwitchController());
StringController stringController = Get.put(StringController());

class AnaMenu extends StatefulWidget {
  final Function sendcmd;
  const AnaMenu({super.key, required this.sendcmd});

  @override
  State<AnaMenu> createState() => _AnaMenuState();
}

class _AnaMenuState extends State<AnaMenu> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    double referenceWidth = width / 392.7;
    double referenceHeight = height / 825.5;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(255, 167, 255, 164),
          Color.fromARGB(255, 236, 255, 235),
        ],
      )),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: referenceWidth * 120,
              height: referenceHeight * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/clean_water.png',
                    width: referenceWidth * 20,
                    height: referenceHeight * 20,
                  ),
                  SizedBox(
                    width: referenceWidth * 5,
                  ),
                  Obx(
                    () => Text(
                      "% ${switchController.statuswhite}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // TEMİZ SU
            SizedBox(
              width: referenceWidth * 5,
            ),
            Container(
              width: referenceWidth * 120,
              height: referenceHeight * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/gray_water.png',
                    width: referenceWidth * 20,
                    height: referenceHeight * 20,
                  ),
                  SizedBox(
                    width: referenceWidth * 5,
                  ),
                  Obx(
                    () => Text(
                      "% ${switchController.statusgray}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // GRİ SU
            SizedBox(
              width: referenceWidth * 5,
            ),
            Container(
              width: referenceWidth * 120,
              height: referenceHeight * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/dirty_water.png',
                    width: referenceWidth * 20,
                    height: referenceHeight * 20,
                  ),
                  SizedBox(
                    width: referenceWidth * 5,
                  ),
                  Obx(
                    () => Text(
                      "% ${switchController.statusblack}",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // KİRLİ SU
          ],
        ),
        SizedBox(
          height: referenceHeight * 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: referenceWidth * 120,
              height: referenceHeight * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/battery_1.png',
                    width: referenceWidth * 20,
                    height: referenceHeight * 20,
                  ),
                  SizedBox(
                    width: referenceWidth * 5,
                  ),
                  Obx(
                    () => Text(
                      "${switchController.statusbattery1}v",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Batarya1
            SizedBox(
              width: referenceWidth * 5,
            ),
            Container(
              width: referenceWidth * 120,
              height: referenceHeight * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/battery_2.png',
                    width: referenceWidth * 20,
                    height: referenceHeight * 20,
                  ),
                  SizedBox(
                    width: referenceWidth * 5,
                  ),
                  Obx(
                    () => Text(
                      "${switchController.statusbattery2}v",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            // batarya2
            SizedBox(
              width: referenceWidth * 5,
            ),
            Container(
              width: referenceWidth * 120,
              height: referenceHeight * 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/temp_in.png',
                    width: referenceWidth * 20,
                    height: referenceHeight * 20,
                  ),
                  SizedBox(
                    width: referenceWidth * 5,
                  ),
                  Obx(
                    () => Text(
                      "${switchController.statustempin}°C",
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ), // sıcaklık
          ],
        ),
        SizedBox(
          height: referenceHeight * 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: referenceHeight * 50,
                  width: referenceWidth * 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/return.png',
                          width: referenceWidth * 35,
                          height: referenceHeight * 35,
                        ),
                        SizedBox(width: referenceWidth * 15),
                        const Text(
                          "GIRIS",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ])),
            ),
            SizedBox(width: referenceWidth * 10),
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: referenceHeight * 50,
                  width: referenceWidth * 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/out.png',
                          width: referenceWidth * 30,
                          height: referenceHeight * 30,
                        ),
                        SizedBox(width: referenceWidth * 15),
                        const Text(
                          "ÇIKIS",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ])),
            ),
          ],
        ),
        SizedBox(
          height: referenceHeight * 15,
        ),
        GestureDetector(
          onTap: () {
            widget.sendcmd("icayd");
          },
          child: Obx(
            () => Container(
                height: referenceHeight * 75,
                width: referenceWidth * 370,
                decoration: BoxDecoration(
                  color: switchController.icayd
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(width: referenceWidth * 15),
                  Image.asset(
                    switchController.icayd
                        ? 'assets/images/lamp.png'
                        : 'assets/images/lamp_off.png',
                    width: referenceWidth * 30,
                    height: referenceHeight * 30,
                  ),
                  SizedBox(width: referenceWidth * 5),
                  Text(
                    stringController.strings[0],
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(
                    width: referenceWidth * 125,
                  ),
                ])),
          ),
        ),
        SizedBox(
          height: referenceHeight * 6,
        ),
        GestureDetector(
          onTap: () {
            widget.sendcmd("disayd");
          },
          child: Obx(
            () => Container(
                height: referenceHeight * 75,
                width: referenceWidth * 370,
                decoration: BoxDecoration(
                  color: switchController.disayd
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  SizedBox(width: referenceWidth * 15),
                  Image.asset(
                    switchController.disayd
                        ? 'assets/images/light_out.png'
                        : 'assets/images/light_out_off.png',
                    width: referenceWidth * 30,
                    height: referenceHeight * 30,
                  ),
                  SizedBox(width: referenceWidth * 5),
                  Text(
                    stringController.strings[1],
                    style: const TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: referenceWidth * 117,
                  ),
                ])),
          ),
        ),
        SizedBox(
          height: referenceHeight * 15,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              widget.sendcmd("webasto");
            },
            child: Obx(
              () => deviceContainer(
                text: stringController.strings[10], 
                isActive: switchController.webasto, 
                context: context, 
                image: switchController.webasto ? 'assets/images/heater.png' : 'assets/images/heater_off.png'),
            ),
          ),
          SizedBox(width: referenceWidth * 10),
          GestureDetector(
            onTap: () {
              widget.sendcmd("hidrofor");
            },
            child: Obx(
              () => deviceContainer(
                text: stringController.strings[11], 
                isActive: switchController.hidrofor, 
                context: context, 
                image: switchController.hidrofor ? 'assets/images/water_pump.png' : 'assets/images/water_pump_off.png'),
            ),
            ),
          
        ]),
        SizedBox(
          height: referenceHeight * 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              widget.sendcmd("macerator");
            },
            child: Obx(
              () => deviceContainer(
                text: stringController.strings[12], 
                isActive: switchController.macerator, 
                context: context, 
                image: switchController.macerator ? 'assets/images/pump_out.png' : 'assets/images/pump_out_off.png'),
            ),
          ),
          SizedBox(width: referenceWidth * 10),
          GestureDetector(
            onTap: () {
              widget.sendcmd("inverter");
            },
            child: Obx(
              () => deviceContainer(
                text: stringController.strings[14], 
                isActive: switchController.inverter, 
                context: context, 
                image: switchController.inverter ? 'assets/images/inverter.png' : 'assets/images/inverter_off.png'),
            ),
          ),
        ]),
      ]),
    );
  }
}

 




