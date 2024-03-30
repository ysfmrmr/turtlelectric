import 'package:get/get.dart';

class SwitchController extends GetxController {
  final Rx<bool> _lamba1 = false.obs;
  final Rx<bool> _lamba2 = false.obs;
  final Rx<bool> _lamba3 = false.obs;
  final Rx<bool> _lamba4 = false.obs;
  final Rx<bool> _lamba5 = false.obs;
  final Rx<bool> _lamba6 = false.obs;
  final Rx<bool> _dislamba1 = false.obs;
  final Rx<bool> _dislamba2 = false.obs;

  bool get lamba1 => _lamba1.value;

  set lamba1(bool value) {
    _lamba1.value = value;
  }

  bool get lamba2 => _lamba2.value;

  set lamba2(bool value) {
    _lamba2.value = value;
  }

  bool get lamba3 => _lamba3.value;

  set lamba3(bool value) {
    _lamba3.value = value;
  }

  bool get lamba4 => _lamba4.value;

  set lamba4(bool value) {
    _lamba4.value = value;
  }

  bool get lamba5 => _lamba5.value;

  set lamba5(bool value) {
    _lamba5.value = value;
  }

  bool get lamba6 => _lamba6.value;

  set lamba6(bool value) {
    _lamba6.value = value;
  }

  bool get dislamba1 => _dislamba1.value;

  set dislamba1(bool value) {
    _dislamba1.value = value;
  }

  bool get dislamba2 => _dislamba2.value;

  set dislamba2(bool value) {
    _dislamba2.value = value;
  }

  final Rx<bool> _icayd = false.obs;
  final Rx<bool> _disayd = false.obs;

  bool get icayd => _icayd.value;

  set icayd(bool value) {
    _icayd.value = value;
  }

  bool get disayd => _disayd.value;

  set disayd(bool value) {
    _disayd.value = value;
  }

  final Rx<bool> _webasto = false.obs;
  final Rx<bool> _hidrofor = true.obs;
  final Rx<bool> _macerator = false.obs;
  final Rx<bool> _yuksekops = false.obs;
  final Rx<bool> _inverter = false.obs;
  final Rx<bool> _televizyon = false.obs;
  final Rx<bool> _usb = false.obs;
  final Rx<bool> _normalops = false.obs;

  bool get webasto => _webasto.value;

  set webasto(bool value) {
    _webasto.value = value;
  }

  bool get hidrofor => _hidrofor.value;

  set hidrofor(bool value) {
    _hidrofor.value = value;
  }

  bool get macerator => _macerator.value;

  set macerator(bool value) {
    _macerator.value = value;
  }

  bool get yuksekops => _yuksekops.value;

  set yuksekops(bool value) {
    _yuksekops.value = value;
  }

  bool get inverter => _inverter.value;

  set inverter(bool value) {
    _inverter.value = value;
  }

  bool get televizyon => _televizyon.value;

  set televizyon(bool value) {
    _televizyon.value = value;
  }

  bool get usb => _usb.value;

  set usb(bool value) {
    _usb.value = value;
  }

  bool get normalops => _normalops.value;

  set normalops(bool value) {
    _normalops.value = value;
  }

  final Rx<bool> _bluetooth = false.obs;
  final Rx<bool> _ledstatus = false.obs;
  final Rx<bool> _connected = false.obs;
  final Rx<bool> _wifiischanged = false.obs;

  bool get bluetooth => _bluetooth.value;

  set bluetooth(bool value) {
    _bluetooth.value = value;
  }

  bool get ledstatus => _ledstatus.value;
  set ledstatus(bool value) {
    _ledstatus.value = value;
  }

  bool get connected => _connected.value;
  set connected(bool value) {
    _connected.value = value;
  }

  bool get wifiischanged => _wifiischanged.value;

  set wifiischanged(bool value) {
    _wifiischanged.value = value;
  }

  final Rx<double> _currentvalue1 = 0.0.obs;
  final Rx<double> _currentvalue2 = 0.0.obs;
  final Rx<double> _currentvalue3 = 0.0.obs;
  final Rx<double> _currentvalue4 = 0.0.obs;

  double get currentvalue1 => _currentvalue1.value;

  set currentvalue1(double value) {
    _currentvalue1.value = value;
  }

  double get currentvalue2 => _currentvalue2.value;

  set currentvalue2(double value) {
    _currentvalue2.value = value;
  }

  double get currentvalue3 => _currentvalue3.value;

  set currentvalue3(double value) {
    _currentvalue3.value = value;
  }

  double get currentvalue4 => _currentvalue4.value;

  set currentvalue4(double value) {
    _currentvalue4.value = value;
  }

  final RxInt _statuswhite = 74.obs;
  final RxInt _statusgray = 25.obs;
  final RxInt _statusblack = 18.obs;
  final RxInt _statustempin = 22.obs;
  final RxInt _statustempout = 14.obs;
  final Rx<double> _statusbattery1 = 12.3.obs;
  final Rx<double> _statusbattery2 = 24.9.obs;

  int get statuswhite => _statuswhite.value;

  set statuswhite(int value) {
    _statuswhite.value = value;
  }

  int get statusgray => _statusgray.value;

  set statusgray(int value) {
    _statusgray.value = value;
  }

  int get statusblack => _statusblack.value;

  set statusblack(int value) {
    _statusblack.value = value;
  }

  int get statustempin => _statustempin.value;

  set statustempin(int value) {
    _statustempin.value = value;
  }

  int get statustempout => _statustempout.value;

  set statustempout(int value) {
    _statustempout.value = value;
  }

  double get statusbattery1 => _statusbattery1.value;

  set statusbattery1(double value) {
    _statusbattery1.value = value;
  }

  double get statusbattery2 => _statusbattery2.value;

  set statusbattery2(double value) {
    _statusbattery2.value = value;
  }
}
