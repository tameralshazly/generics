void main(List<String> args) {
  const integers = [100, 5, 2];
  const doubles = [33.0, 3, 2.0];

  print(integers.reduce(divideFunction));
  print(doubles.reduce(divideFunction));
}

T divideFunction<T extends num>(T a, T b) {
  if (a is int && b is int) {
    return a ~/ b as T;
  } else {
    return a / b as T;
  }
}
