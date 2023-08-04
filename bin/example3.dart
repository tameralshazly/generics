void main(List<String> args) {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };

  const brotherAndSisterAndFish = {
    'brother': Person(),
    'sister': Person(),
    'fish': Fish(),
  };

  final allVariables = [momAndDad, brotherAndSisterAndFish];

  describe(allVariables);
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (var map in values) {
    for (var keyAndValue in map.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();
  @override
  void breathe() {
    print('Person is breathing...');
  }
}

class Fish with CanBreathe {
  const Fish();
  @override
  void breathe() {
    print('Fish is breathing...');
  }
}
