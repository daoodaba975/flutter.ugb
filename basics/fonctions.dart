void estPair(int nombre) {
  if (nombre % 2 == 0) {
    return print("Pair");
  } else {
    return print("Impair");
  }
}

void main() {
  estPair(5);
  estPair(10);
  estPair(16);
}
