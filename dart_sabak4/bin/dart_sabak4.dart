// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
  Olko kg = Olko(
    name: 'Кыргызстан',
    ayanty: 15515484215,
    til: Til(
      name: 'Кыргыз',
      tamgaSany: 36,
      tamgalar: ['a', 'b'],
      sozdor: ['men', 'sen'],
    ),
    kalky: 7000000,
    shaarlar: ['bishkek', 'Osh', 'Jalal-Abad'],
    egemenduubu: true,
  );

  // kg.kalky = 7000000;
  // kg.ayanty = 15515484215;
  // kg.egemenduubu = true;
  // kg.name = 'Кыргызстан';
  print(kg.kalky);
  print(kg.ayanty);
  print(kg.egemenduubu);
  print(kg.name);
  print(kg.til.name);
  print(kg.til.tamgalar);
}

//class <------------------> Object
//class --- деген бул жаны тушунукторду бериш учун колдонулат
String a = 'a';

//Olko Kyrgzstan;

//Olko kg = Olko();

//()--- жонокой каша функцияга иштейт
//{}---- бул тармал каша же ийри каша болот бодиге иштейт
//[]---- бул чарчы каша болот бул болсо листке иштейт

class Olko {
  String name;
  double ayanty;
  int kalky;
  List shaarlar;
  bool egemenduubu;
  Til til;
  Olko({
    required this.name,
    required this.ayanty,
    required this.kalky,
    required this.shaarlar,
    required this.egemenduubu,
    required this.til,
  });
}

class Til {
  String name;
  int tamgaSany;
  List tamgalar;
  List sozdor;
  Til({
    required this.name,
    required this.tamgaSany,
    required this.tamgalar,
    required this.sozdor,
  });
}
