void main(List<String> args) {
  int num = 5;

  print(factoria(4));
  print(strong(145));
}

int strong(int n) {
  int snum = 0;
  while (n > 0) {
    int rem = n % 10;
    snum += factoria(rem);
    n = n ~/ 10;
  }
  return snum;
}

int factoria(int n) {
  int fact = 1;
  for (int i = 1; i <= n; i++) {
    fact = fact * i;
  }
  return fact;
}
