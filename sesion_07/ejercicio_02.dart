class Estudiante {
  var id = 0;
  var dinero = 0;
}

void main() {
  final fi = Estudiante();
  fi.dinero = 700;
  print(fi.dinero);

  final porro = fi;
  print(fi.id);
  print(porro.dinero);
  porro.id = -10;

  print(fi.id);
}
