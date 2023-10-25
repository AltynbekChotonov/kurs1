void main(List<String> arguments) {
  salamBer();
  koshtosh();
}
// async
// await

void salamBer() async {
  await Future.delayed(Duration(seconds: 5));
  print('Salam');
}

void koshtosh() {
  print('kosh bol');
}
