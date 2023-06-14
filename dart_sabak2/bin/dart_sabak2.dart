void main(List<String> arguments) {
  print('kurs1'.runtimeType);
  print(12.runtimeType);
  print(12.34.runtimeType);
  print(true.runtimeType);

  String atalganString = 'kurs1';

  //() бул функция
  //{}; бул фунциянын денеси
  Function birfunksiabarabarmenen = () {
    print('salam kyrgyz');
  };

  birfunksiabarabarmenen.call();

  Olko Kyrgyzstan = Olko();
  print(Kyrgyzstan.kalky);

  Birfunksia();
}

Birfunksia() {
  print('Birfunksia');
}

class Olko {
  int kalky = 7000000;
}
