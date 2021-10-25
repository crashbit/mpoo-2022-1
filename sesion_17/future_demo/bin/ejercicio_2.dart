void main() {
  print("Antes del future");

  final myFuture = Future<int>.delayed(
    Duration(seconds: 5),
    () => 45,
  )
      .then(
        (valor) => print("Resultado: $valor"),
      )
      .catchError(
        (error) => print("Hubo un error: $error"),
      )
      .whenComplete(
        () => print("Future completado"),
      );

  print("despues del future");
}
