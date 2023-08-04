void main(List<String> args) {
  const JSON json = {
    'name': 'John',
    'age': 20,
  };

  print(json);
}

typedef JSON<T> = Map<String, T>;
