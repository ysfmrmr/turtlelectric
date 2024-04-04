import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turtlelectric/Chart/buildchart.dart';
import 'package:turtlelectric/Get/bools.dart';

SwitchController switchController = Get.put(SwitchController());


class SpecsNew extends StatefulWidget {
  const SpecsNew({super.key});

  @override
  State<SpecsNew> createState() => _SpecsNewState();
}

class _SpecsNewState extends State<SpecsNew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
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
      child: Padding(
        padding: const EdgeInsets.only(top : 30),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  const Stack(children: [
                    SizedBox(height: 200, width: 350, child: ChartIndex()),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: Column(
                            children: [
                              Text("${switchController.statusbattery1}v",
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          )),
                                          Text("Yaşam aküsü", style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.black),)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 10, 10, 0),
                          child: Column(
                            children: [
                              Text("${switchController.statusbattery2}v",
                                          style: const TextStyle(
                                            fontSize: 40,
                                            color: Colors.black,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.bold,
                                          )),
                                          Text("Araç aküsü", style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.black),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                height: 125,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
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
                    Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("%${switchController.statuswhite}",
                                            style: const TextStyle(
                                              fontSize: 35,
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                            )),
                                            Text("Temiz Su Seviyesi", style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.black),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("%${switchController.statusgray}",
                                            style: const TextStyle(
                                              fontSize: 35,
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                            )),
                                            Text("Kirli Su Seviyesi", style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.black),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("%${switchController.statusblack}",
                                            style: const TextStyle(
                                              fontSize: 35,
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                            )),
                                            Text("Yaşam aküsü", style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.black),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                height: 125,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
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
                    Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${switchController.statustempin}°C",
                                            style: const TextStyle(
                                              fontSize: 35,
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                            )),
                                            Text("Ortam Sıcaklık", style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.black),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${switchController.statustempout}°C",
                                            style: const TextStyle(
                                              fontSize: 35,
                                              color: Colors.black,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.bold,
                                            )),
                                            Text("Dış Sıcaklık", style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.black),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            )


                
          ],
        ),
      ),
    );
  }
}
