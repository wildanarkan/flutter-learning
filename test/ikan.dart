import 'hewan.dart';
import 'mixin/renang.dart';

class Ikan extends Hewan with Renang{
  Ikan({required age}): super(name: "Ikan", kategori: "Hewan Air", age: age);
}