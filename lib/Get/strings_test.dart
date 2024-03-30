// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class StringControllerTest extends GetxController {
  var strings = <String>[
    'Ic Aydınlatma',
    'Dıs Aydınlatma',
    'Lamba 1',
    'Lamba 2',
    'Lamba 3',
    'Lamba 4',
    'Lamba 5',
    'Lamba 6',
    'Dıs lamba 1',
    'Dıs lamba 2',
    'Webasto',
    'Hidrofor',
    'Macerator',
    'Yüksek Guc Opsiyon',
    'Inverter',
    'Televizyon',
    'USB Sarj',
    'Normal Opsiyon',
    'Led 1',
    'Led 2',
    'Led 3',
    'Led 4',
  ];

  void updateString(int index, String newValue) {
    if (index >= 0 && index < strings.length) {
      strings[index] = newValue;
      update(); // Güncellemeyi GetX'e bildir
    }
  }
}
