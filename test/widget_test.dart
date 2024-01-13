import 'anjing.dart';
import 'ikan.dart';

void main(){
  Anjing hewan1 = Anjing(age: 4);
  hewan1.setLari = 2;
  hewan1.setRenang = 1;
  print("Hewan : ${hewan1.name}");
  print("Kategori : ${hewan1.kategori}");
  print("age : ${hewan1.age} tahun");
  print("kecepatan lari : ${hewan1.lari} m/s");
  print("kecepatan renang : ${hewan1.renang} m/s");

  var anjingMenua = hewan1.menua = 2;
  print("${hewan1.name} menua selama $anjingMenua tahun");
  print("umur kini : ${hewan1.age} tahun");

  print("--------------------------------");
  
  Ikan hewan2 = Ikan(age: 3);
  hewan2.setRenang = 4;
  print("Hewan : ${hewan2.name}");
  print("Kategori : ${hewan2.kategori}");
  print("age : ${hewan2.age} tahun");
  print("kecepatan renang : ${hewan2.renang} m/s");

  var ikanMenua = hewan2.menua = 1;
  print("${hewan2.name} menua selama $ikanMenua tahun");
  print("umur kini : ${hewan2.age} tahun");

}