// ignore_for_file: camel_case_types, avoid_print

import 'package:flutter/material.dart';
import 'package:turtlelectric/devices.dart';

class Wifichange extends StatefulWidget {
  final Function sendcmd;
  const Wifichange({super.key, required this.sendcmd});

  @override
  State<Wifichange> createState() => _WifichangeState();
}

class _WifichangeState extends State<Wifichange> {
  final TextEditingController _wifiIsmiController = TextEditingController();
  final TextEditingController _wifiSifreController = TextEditingController();

  String wifiIsmi = '';
  String wifiSifre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 255, 164),
        title: const Text(
          "Wi-Fi Ayarları",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
          ),
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
            ])),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _wifiIsmiController,
                decoration: const InputDecoration(
                  labelText: 'Wifi İsmi',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: _wifiSifreController,
                decoration: const InputDecoration(
                  labelText: 'Wifi Şifresi',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  wifiIsmi = _wifiIsmiController.text;
                  wifiSifre = _wifiSifreController.text;
                  String veri = "wifichange,$wifiIsmi,$wifiSifre";
                  widget.sendcmd(veri);
                  print('Gönderilecek Veri: $veri');
                  Future.delayed(const Duration(seconds: 2), () {
                    print('Delayed Operation');

                    if (switchController.wifiischanged == true) {
                      _wifiPopup(context);
                      switchController.wifiischanged = false;
                    } else {}
                  });
                },
                child: const Text('Wifi Bilgilerini Gönder'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _wifiPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Wİ-Fİ İsim Değişikliği',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w800,
                fontSize: 20),
          ),
          content: SizedBox(
            height: 100,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Yeni Wİ-Fİ ismi: ',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    Text(
                      wifiIsmi,
                      style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300,
                          fontSize: 13),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Yeni Wİ-Fİ şifresi: ',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    Text(wifiSifre),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Yeni Wi-Fi ağına bağlanabilirsiniz',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                      Text(
                        'Uygulamayı kapatıp tekrar başlatın',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                    ])
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kapat'),
            ),
          ],
        );
      },
    );
  }
}
