// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class StringController extends GetxController {
  var imagesss = <String>[
    'assets/images/battery_1.png',
    'assets/images/battery_2.png',
    'assets/images/dirty_water.png',
    'assets/images/clean_water.png',
    'assets/images/gray_water.png',
    'assets/images/temp_out.png',
    'assets/images/temp_in.png',
    'assets/images/return.png',
    'assets/images/out.png',
    'assets/images/lamp.png',
    'assets/images/lamp_off.png',
    'assets/images/light_out.png',
    'assets/images/light_out_off.png',
    'assets/images/heater.png',
    'assets/images/heater_off.png',
    'assets/images/water_pump.png',
    'assets/images/water_pump_off.png',
    'assets/images/pump_out.png',
    'assets/images/pump_out_off.png',
    'assets/images/inverter.png',
    'assets/images/inverter_off.png',
    'assets/images/logo.png',
    'assets/images/tv.png',
    'assets/images/tv_off.png',
    'assets/images/usb.png',
    'assets/images/usb_off.png',
    'assets/images/option.png',
    'assets/images/option_off.png',
    'assets/images/applogo.png',
  ];

  var images = <String, List<String>>{
    'İç Aydınlatma': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Dış Aydınlatma': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Lamba 1': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Lamba 2': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Lamba 3': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Lamba 4': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Lamba 5': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Lamba 6': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Dış lamba 1': [
      'assets/images/lamp_out.png',
      'assets/images/lamp_out_off.png',
    ],
    'Dış lamba 2': [
      'assets/images/lamp_out.png',
      'assets/images/lamp_out_off.png',
    ],
    'Webasto': [
      'assets/images/heater.png',
      'assets/images/heater_off.png',
    ],
    'Hidrofor': [
      'assets/images/water_pump.png',
      'assets/images/water_pump_off.png',
    ],
    'Macerator': [
      'assets/images/pump_out.png',
      'assets/images/pump_out_off.png',
    ],
    'Yüksek Güç Opsiyon': [
      'assets/images/option.png',
      'assets/images/option_off.png',
    ],
    'İnverter': [
      'assets/images/inverter.png',
      'assets/images/inverter_off.png',
    ],
    'Televizyon': [
      'assets/images/tv.png',
      'assets/images/tv_off.png',
    ],
    'USB Şarj': [
      'assets/images/usb.png',
      'assets/images/usb_off.png',
    ],
    'Normal Opsiyon': [
      'assets/images/option.png',
      'assets/images/option_off.png',
    ],
    'Led 1': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Led 2': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Led 3': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    'Led 4': [
      'assets/images/lamp.png',
      'assets/images/lamp_off.png',
    ],
    // diğer stringler için aynı şekilde devam edebilirsiniz
  };

  var strings = <String>[
    'İç Aydınlatma',
    'Dış Aydınlatma',
    'Lamba 1',
    'Lamba 2',
    'Lamba 3',
    'Lamba 4',
    'Lamba 5',
    'Lamba 6',
    'Dış lamba 1',
    'Dış lamba 2',
    'Webasto',
    'Hidrofor',
    'Macerator',
    'Yüksek Güç Opsiyon',
    'İnverter',
    'Televizyon',
    'USB Şarj',
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
