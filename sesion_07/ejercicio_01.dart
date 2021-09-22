void main() {
  final user = User();

  print(user.id);
  user.id = 22;
  print(user.id);

  user.nombre = "Telmex user";
  print(user.nombre);

  print(user);

  user.levantaQueja("soy un user quejon");
}

class User {
  int id = 0;
  String nombre = "";

  @override
  String toString() {
    return "Yo soy user con id: $id y nombre: $nombre";
  }

  void levantaQueja(String queja) {
    print("Soy el usuario: $nombre y mi queja es: $queja");
  }
}
