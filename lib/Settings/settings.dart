// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turtlelectric/Get/bools.dart';
import 'package:turtlelectric/Settings/string_change.dart';
import 'package:turtlelectric/Settings/wifichange.dart';
import 'package:turtlelectric/Settings/codereset.dart';

SwitchController switchController = Get.put(SwitchController());

class Settings extends StatefulWidget {
  final Function sendcmd;
  const Settings({super.key, required this.sendcmd});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 255, 164),
        title: const Text(
          'AYARLAR',
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
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
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Wifichange(sendcmd: widget.sendcmd),
                    ),
                  );
                },
                child: Container(
                    alignment: Alignment.centerLeft,
                    width: 370,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            "Wi-Fi Ayarları",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.arrow_forward,
                            color: Colors.black, size: 30),
                      ],
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const stringchange()));
                },
                child: Container(
                    alignment: Alignment.centerLeft,
                    width: 370,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            "Metin Düzenleme",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.arrow_forward,
                            color: Colors.black, size: 30),
                      ],
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CodeReset(sendcmd: widget.sendcmd)));
                },
                child: Container(
                    alignment: Alignment.centerLeft,
                    width: 370,
                    height: 65,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            "Yazılım Resetleme",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.arrow_forward,
                            color: Colors.black, size: 30),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
