void main(List<String> args) {
  torttuEkigeKoboit();
  int jiyntyk = beshtiEkigeKoboit();
  print('jiyntyk');
  print(jiyntyk);

  int resultat = EkigeKoboit(9);
}

int EkigeKoboit(int san) {
  int koboitylgonSan = san * 2;
  print('koboitylgonSan $koboitylgonSan');
  return koboitylgonSan;
}

void torttuEkigeKoboit() {
  int resultat = 4 * 2;
  print(resultat);
}

int beshtiEkigeKoboit() {
  int resultat = 5 * 2;
  print(resultat);
  return resultat;
}
