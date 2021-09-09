bool evaluaNumero(int valor, {int min = 0, int max = 10}) {
  return min <= valor && valor <= max;
}

void main() {
  print(evaluaNumero(3, max: 5));
  print(evaluaNumero(5, max: 20, min: -2));
}
