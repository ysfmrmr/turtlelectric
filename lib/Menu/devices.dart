// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turtlelectric/Containers/device_containers.dart';
import 'package:turtlelectric/Get/bools.dart';
import 'package:turtlelectric/Get/strings.dart';

SwitchController switchController = Get.put(SwitchController());
StringController stringController = Get.put(StringController());

class Aygitlar extends StatefulWidget {
  final Function sendcmd;
// ignore: use_super_parameters
  const Aygitlar({Key? key, required this.sendcmd}) : super(key: key);
  @override
  State<Aygitlar> createState() => _AygitlarState();
}

class _AygitlarState extends State<Aygitlar> {
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
            height: referenceHeight * 13,
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
          SizedBox(
            height: referenceHeight * 13,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                widget.sendcmd("tv");
              },
              child: Obx(
                () => deviceContainer(
                text: stringController.strings[15], 
                isActive: switchController.televizyon, 
                context: context, 
                image: switchController.televizyon ? 'assets/images/tv.png' : 'assets/images/tv_off.png'),
              ),
            ),
            SizedBox(width: referenceWidth * 10),
            GestureDetector(
              onTap: () {
                widget.sendcmd("usb");
              },
              child: Obx(
                () => deviceContainer(
                text: stringController.strings[16], 
                isActive: switchController.usb, 
                context: context, 
                image: switchController.usb ? 'assets/images/usb.png' : 'assets/images/usb_off.png'),
              ),
            ),
          ]),
          SizedBox(
            height: referenceHeight * 13,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                widget.sendcmd("yops");
              },
              child: Obx(
                () => deviceContainer(
                text: stringController.strings[13], 
                isActive: switchController.yuksekops, 
                context: context, 
                image: switchController.yuksekops ? 'assets/images/option.png' : 'assets/images/option_off.png'),
              ),
            ),
            SizedBox(width: referenceWidth * 10),
            GestureDetector(
              onTap: () {
                widget.sendcmd("nops");
              },
              child: Obx(
                () => deviceContainer(
                text: stringController.strings[17], 
                isActive: switchController.normalops, 
                context: context, 
                image: switchController.normalops ? 'assets/images/option.png' : 'assets/images/option_off.png'),
              ),
            ),
          ]),
        ]));
  }
}
