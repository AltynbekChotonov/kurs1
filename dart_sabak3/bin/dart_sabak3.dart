void main(List<String> arguments) {
  //List =>[]  тизме
  List birList = ['kurs1', 12, true, 23.45, "kurs1", 12, 23.45];
  //print(birList[3]);

  // Set => {} ушинтип атайбыз
  Set birSet = {'kurs1', 12, true, 23.45, 'kurs2'};
  //print(birSet);

  // Map=>{}  (dictionary)  создук
/*
key  <--------------------> value
Ачкыч <------------------>  Маани
Hello => Salam
name => at
*/
  Map birMap = {12:'On eki', "Hello": "Salam", "Name": "At"};
  print(birMap['Name']);
  print(birMap["Hello"]);
}
