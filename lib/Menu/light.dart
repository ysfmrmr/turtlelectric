// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turtlelectric/Containers/dlamb_containers.dart';
import 'package:turtlelectric/Containers/lamb_containers.dart';
import 'package:turtlelectric/Containers/led_containers.dart';
import 'package:turtlelectric/Get/bools.dart';
import 'package:turtlelectric/Get/strings.dart';

SwitchController switchController = Get.put(SwitchController());
StringController stringController = Get.put(StringController());

class Aydinlatma extends StatefulWidget {
  final Function sendcmd;

  const Aydinlatma({super.key, required this.sendcmd});

  @override
  State<Aydinlatma> createState() => _AydinlatmaState();
}

class _AydinlatmaState extends State<Aydinlatma> {
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
                widget.sendcmd("lamba1");
              },
              child: Obx(() => lambContainer(
                    isActive: switchController.lamba1,
                    text: stringController.strings[2],
                    context: context,
                  )),
            ),
            SizedBox(width: referenceWidth * 10),
            GestureDetector(
              onTap: () {
                widget.sendcmd("lamba2");
              },
              child: Obx(() => lambContainer(
                    isActive: switchController.lamba2,
                    text: stringController.strings[3],
                    context: context,
                  )),
            ),
          ]),
          SizedBox(
            height: referenceHeight * 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                widget.sendcmd("lamba3");
              },
              child: Obx(() => lambContainer(
                    isActive: switchController.lamba3,
                    text: stringController.strings[4],
                    context: context,
                  )),
            ),
            SizedBox(width: referenceWidth * 10),
            GestureDetector(
              onTap: () {
                widget.sendcmd("lamba4");
              },
              child: Obx(() => lambContainer(
                    isActive: switchController.lamba4,
                    text: stringController.strings[5],
                    context: context,
                  )),
            ),
          ]),
          SizedBox(
            height: referenceHeight * 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                widget.sendcmd("lamba5");
              },
              child: Obx(() => lambContainer(
                    isActive: switchController.lamba5,
                    text: stringController.strings[6],
                    context: context,
                  )),
            ),
            SizedBox(width: referenceWidth * 10),
            GestureDetector(
              onTap: () {
                widget.sendcmd("lamba6");
              },
              child: Obx(() => lambContainer(
                    isActive: switchController.lamba6,
                    text: stringController.strings[7],
                    context: context,
                  )),
            ),
          ]),
          SizedBox(
            height: referenceHeight * 20,
          ),
          Obx(() => ledContainer(
                isActive: switchController.currentvalue1,
                text: stringController.strings[18],
                context: context,
                sendcmd: widget.sendcmd, none: 1,
              )),
          SizedBox(
            height: referenceHeight * 10,
          ),
          Obx(() => ledContainer(
                isActive: switchController.currentvalue2,
                text: stringController.strings[19],
                context: context,
                sendcmd: widget.sendcmd, none: 2,
              )),
          SizedBox(
            height: referenceHeight * 10,
          ),
          Obx(() => ledContainer(
                isActive: switchController.currentvalue3,
                text: stringController.strings[20],
                context: context,
                sendcmd: widget.sendcmd, none: 3,
              )),
          SizedBox(
            height: referenceHeight * 10,
          ),
          Obx(() => ledContainer(
                isActive: switchController.currentvalue4,
                text: stringController.strings[21],
                context: context,
                sendcmd: widget.sendcmd, none: 4,
              )),
          SizedBox(
            height: referenceHeight * 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                widget.sendcmd("dlamba1");
              },
              child: Obx(() => dlambContainer(
                  isActive: switchController.dislamba1,
                  text: stringController.strings[8],
                  context: context)),
            ),
            SizedBox(width: referenceWidth * 10),
            GestureDetector(
              onTap: () {
                widget.sendcmd("dlamba2");
              },
              child: Obx(() => dlambContainer(
                  isActive: switchController.dislamba2,
                  text: stringController.strings[9],
                  context: context)),
            ),
          ])
        ]));
  }
}
