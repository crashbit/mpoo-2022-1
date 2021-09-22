//Constructor nombrados
class Estudiante {
  var id = 0;

  Estudiante(this.id);

  Estudiante.PARA(int id) {
    this.id = id;
    print("Se acaba de crear Estudiante PARA");
  }
}

void main() {
  final fi = Estudiante(3000);
  final fiPara = Estudiante.PARA(5000);
  print(fi.id);
  print(fiPara.id);
}
