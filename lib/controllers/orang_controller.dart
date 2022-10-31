import 'package:get/get.dart';
import 'package:get_x/models/orang.dart';

class OrangController extends GetxController {

  var orang = Orang(nama: 'dani', umur: 20).obs;
  toUpper() {
    // jika kamu mengunakan model , gunakan update dan lakukan update data didalamnya
    orang.update((val) {
      orang.value.nama = orang.value.nama.toString().toUpperCase();
    });
  }
  
  toLower() {
    orang.update((val) {
     orang.value.nama =  orang.value.nama.toString().toLowerCase();
    });
  }
}
