import 'hewan.dart';
import 'mixin/lari.dart';
import 'mixin/renang.dart';

class Anjing extends Hewan with Lari, Renang{
Anjing({required int age}): super(name: "Anjing", kategori: "Hewan Darat", age: age);
}