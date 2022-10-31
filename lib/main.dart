import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controllers/counter_controller.dart';
import 'package:get_x/controllers/orang_controller.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  final countC = Get.put(CounterController());
  final orangC = Get.put(OrangController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('increment'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Angka : ${countC.angka}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Obx(
              () => Text(
                'Nama saya adalah ${orangC.orang.value.nama}',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      countC.increment();
                    },
                    child: Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () {
                      countC.decrement();
                    },
                    child: Icon(Icons.minimize))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      orangC.toLower();
                    },
                    child: Icon(Icons.note)),
                ElevatedButton(
                    onPressed: () {
                      orangC.toUpper();
                    },
                    child: Icon(Icons.upcoming))
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
