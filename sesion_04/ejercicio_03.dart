void suma(int a, int b) {
  print(a + b);
}

int multiplica(int a, int b) {
  return a * b;
}

String nombreCompleto(String nombre, String apellidos, [String? titulo]) {
  if (titulo != null) {
    return "$titulo $nombre $apellidos";
  }
  return "$nombre $apellidos";
}

bool evaluaNumero(int valor, [int min = 0, int max = 10]) {
  return min <= valor && valor <= max;
}

void main() {
  var resultado = multiplica(3, 2);
  print(resultado);
  suma(3, 4);

  print("---------");
  print(nombreCompleto("Luis", "Sanchez", "lic"));
  print(nombreCompleto("Gisela", "Martinez"));

  print("---------");
  print(evaluaNumero(4));
  print(evaluaNumero(4, 3, 6));
  print(evaluaNumero(3, -1));
}
