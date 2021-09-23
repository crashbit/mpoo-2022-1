// Uso de asserts
// compila de la siguiente forma:
// dart --enable-asserts ejercicio_01.dart

void main() {
    final godin = User(id: 20, name: "Godin");
}

class User{
  int _id;
  String _name;

  User({int id=0, String name = "anonimo"})
    : assert(id >= 0),
    assert(name.isNotEmpty),
    _id = id, 
    _name = name;
}

