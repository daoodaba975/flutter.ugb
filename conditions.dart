void main() {
  int age = 25;

  if (age >= 14 && age <= 17) {
    print("Cadet");
  } else if (age >= 18 && age <= 50) {
    print("Majeur");
  } else if (age >= 50) {
    print("Senior");
  } else {
    print("Mineur");
  }

  switch (age) {
    case 14:
      print("Cadet");
      break;
    case 18:
      print("Majeur");
      break;
    case 50:
      print("Senior");
      break;
    default:
      print("Mineur");
  }
}
