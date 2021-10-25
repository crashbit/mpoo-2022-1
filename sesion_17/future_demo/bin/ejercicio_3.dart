void main() async {
  print("Antes del future");

  final valor = await Future<int>.delayed(
    Duration(seconds: 5),
    () => 45,
  );

  print("Este es el valor: $valor");
  print("Despues del future");
}
