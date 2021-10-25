void main() {
  final myFuture = Future<int>.delayed(
    Duration(seconds: 5),
    () => 45,
  );

  print(myFuture);
  print("ultimo print antes de terminar programa");
}
