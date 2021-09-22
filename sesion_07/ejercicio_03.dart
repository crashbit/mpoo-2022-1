//Constructor de forma larga
class Estudiante {
  var id = 0;

  Estudiante(int id) {
    this.id = id;
  }
}

void main() {
  final fi = Estudiante(3000);
  print(fi.id);
}
