// ignore_for_file: camel_case_types, avoid_print, use_super_parameters

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turtlelectric/Get/strings_test.dart';

StringControllerTest stringController = Get.put(StringControllerTest());

class stringchange extends StatefulWidget {
  const stringchange({Key? key}) : super(key: key);

  @override
  State<stringchange> createState() => _stringchangeState();
}

class _stringchangeState extends State<stringchange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 255, 164),
        title: const Text(
          'Metin Düzenleme',
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
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: stringController.strings.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(stringController.strings[index]),
              onTap: () {
                _showEditDialog(context, index);
              },
            );
          },
        ),
      ),
    );
  }

  void _showEditDialog(BuildContext context, int index) {
    String newValue = "";

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Yeni Değer Girin"),
          content: TextField(
            onChanged: (value) {
              newValue = value;
            },
            decoration: const InputDecoration(hintText: "Yeni Değer"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("İptal"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Kaydet"),
              onPressed: () {
                stringController.updateString(index, newValue);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
