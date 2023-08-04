void main(List<String> args) {
  final tuple = Tuple(1, 'One');
  print(tuple);
  final swapTuple = tuple.swap();
  print(swapTuple);
  final intTuple = Tuple(10, 15);
  print(intTuple.sum);
  final doubleTuple = Tuple(10.2, 15.6);
  print(doubleTuple.sum);
  final mixedTuple = Tuple(22.3, 1);
  print(mixedTuple.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;

  const Tuple(this.left, this.right);

  @override
  String toString() => 'Tuple(left: $left, right: $right)';
}

extension Swappers<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
