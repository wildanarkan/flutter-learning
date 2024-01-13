abstract class Hewan {
  String? name;
  String? kategori;
  late int _age;

  Hewan({
    required this.name,
    required this.kategori,
    required int age,
  }){
    _age = age;
  }

  get age => _age;

  set menua(int tahun){
    _age = _age + tahun;
  }
}