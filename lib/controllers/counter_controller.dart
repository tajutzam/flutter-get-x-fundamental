import 'package:get/get.dart';

class CounterController extends GetxController {
  var angka = 0.obs;

  void increment() => angka++;
  void decrement() => angka--;
}
