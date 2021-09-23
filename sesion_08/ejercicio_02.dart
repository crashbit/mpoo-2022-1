// Uso de setters y getters
// Actividad optativa
// Hay que arreglar lo necesario para que los setters funcionen y se compruebe su uso en el main

class User{
  int _id;
  String _name;

  //Getter
  int get id => _id;
  String get name => _name;

  //Setter
  set value(String name) => _name = name;
  set value(int id ) => _id = id;

  User({int id=0, String name = "anonimo"})
    : assert(id >= 0),
    assert(name.isNotEmpty),
    _id = id, 
    _name = name;

}

main(){
  final godin = User(id: 50, name: "Godin");
  print(godin.id);
  print(godin.name);

  godin.value = "Gdoines";
  //name.id = 3000;

  print(godin.id);
  print(godin.name);
}
