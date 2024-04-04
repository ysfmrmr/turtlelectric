// ignore_for_file: avoid_print, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turtlelectric/Chart/gpt_pagelist.dart';
import 'package:turtlelectric/Menu/devices.dart';
import 'package:turtlelectric/Menu/light.dart';
import 'package:turtlelectric/Menu/menu.dart';
import 'package:turtlelectric/Menu/specs_new.dart';
import 'package:turtlelectric/Settings/settings.dart';
import 'package:turtlelectric/Menu/specs.dart';
import 'package:turtlelectric/Get/bools.dart';
import 'package:web_socket_channel/io.dart';

SwitchController switchController = Get.put(SwitchController());

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turtlelectric',
      theme: ThemeData.dark(),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static late IOWebSocketChannel channel;

  final PageController _pageController = PageController();

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      channelconnect(); //connect to WebSocket wth NodeMCU
    });

    super.initState();
  }

  static channelconnect() {
    //function to connect
    try {
      channel =
          IOWebSocketChannel.connect("ws://192.168.4.1/ws"); //channel IP : Port
      channel.stream.listen(
        (message) {
          List<String> values = message.split(',');

          if (values[0] == "connected") {
            switchController.connected = true;
          }
          if (values[0] == "wifiischanged") {
            switchController.wifiischanged = true;
          } 

//*****************************************************************************************

          if (values[0] == "mosfet") {
            List<String> listbinary = values[1].split('');

            switchController.icayd = listbinary[10] == '1' ||
                listbinary[11] == '1' ||
                listbinary[12] == '1' ||
                listbinary[13] == '1' ||
                listbinary[14] == '1' ||
                listbinary[15] == '1';
            switchController.disayd =
                listbinary[8] == '1' || listbinary[9] == '1';

            switchController.macerator = listbinary[0] == '1';
            switchController.hidrofor = listbinary[1] == '1';
            switchController.webasto = listbinary[2] == '1';
            switchController.yuksekops = listbinary[3] == '1';
            switchController.inverter = listbinary[4] == '1';
            switchController.televizyon = listbinary[5] == '1';
            switchController.usb = listbinary[6] == '1';
            switchController.normalops = listbinary[7] == '1';
            switchController.dislamba2 = listbinary[8] == '1';
            switchController.dislamba1 = listbinary[9] == '1';
            switchController.lamba6 = listbinary[10] == '1';
            switchController.lamba5 = listbinary[11] == '1';
            switchController.lamba4 = listbinary[12] == '1';
            switchController.lamba3 = listbinary[13] == '1';
            switchController.lamba2 = listbinary[14] == '1';
            switchController.lamba1 = listbinary[15] == '1';
          }

          //*****************************************************************************************

          if (values[0] == 'led') {
            // l ile başlayan ve en az 5 değere sahipse
            String currentValue1 = values[1];
            String currentValue2 = values[2];
            String currentValue3 = values[3];
            String currentValue4 = values[4];

            try {
              // Değerleri double'a dönüştür
              switchController.currentvalue1 = double.parse(currentValue1);
              switchController.currentvalue2 = double.parse(currentValue2);
              switchController.currentvalue3 = double.parse(currentValue3);
              switchController.currentvalue4 = double.parse(currentValue4);
            } catch (e) {
              // Dönüşüm hatası oluşursa burada ele alınabilir
              print('Dönüşüm hatası: $e');
            }
          }

          //*****************************************************************************************

          if (values[0] == 'specs') {
            switchController.statuswhite = values[1] as int;
            switchController.statusblack = values[2] as int;
            switchController.statusgray = values[3] as int;
            switchController.statustempin = values[4] as int;
            switchController.statustempout = values[5] as int;
            switchController.statusbattery1 = values[6] as double;
            switchController.statusbattery2 = values[7] as double;
          }

          //*****************************************************************************************
        },
        onDone: () {
          //if WebSocket is disconnected
          switchController.connected = false;
        },
        onError: (error) {},
      );
    } catch (_) {}
  }

  static Future<void> sendcmd(String cmd) async {
    if (switchController.connected == true) {
      channel.sink.add(cmd); // Komutu NodeMCU'ya gönder
    } else {
      channelconnect(); // Bağlantıyı yeniden sağla
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   // var size = MediaQuery.of(context).size;
   
   // var height = size.height;
    //var width = size.width;
    //double referenceWidth = width / 392.7;
    //double referenceHeight = height / 825.5;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 255, 164),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Settings(
                          sendcmd: sendcmd,
                        )),
              );
            },
            icon: const Icon(Icons.settings,
                size: 25, color: Colors.black,)
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/logo.png', width: 55, height: 55),
             const Padding(
              padding:  EdgeInsets.only(top: 7.0),
              child: Text(
                //'${width.toInt()}  x ${height.toInt()}',
                'Turtlelectric',
                style: TextStyle(
                  
                  fontSize: 40,
                  fontFamily: 'High Summit',
                  color: Colors.black
                ),
                
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: const [
          AnaMenu(
            sendcmd: sendcmd,
          ),
          Aydinlatma(
            sendcmd: sendcmd,
          ),
          Aygitlar(
            sendcmd: sendcmd,
          ),
          SpecsNew(
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 236, 255, 235)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNavBarItem(Icons.directions_bus_outlined, "Ana Menü", 0),
              buildNavBarItem(Icons.lightbulb_outline_rounded, "Aydınlatma", 1),
              buildNavBarItem(Icons.dataset_outlined, "Aygıtlar", 2),
              buildNavBarItem(Icons.bar_chart_rounded, "Durumlar", 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        _pageController.jumpToPage(index);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 30,
            color: _selectedIndex == index ? Colors.black : Colors.grey,
          ),
          if (_selectedIndex == index)
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                text,
               style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.black)
              ),
            ),
        ],
      ),
    );
  }
}
