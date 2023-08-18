import 'model.dart';

final students = <Student>[bakyt, Samara, Nargiza, Nurkadyr];

void main(List<String> arguments) {
  controlEmailPhone('+996222222085', 'Bahanur2023@gmail.com');
}

void controlEmailPhone(String phone, String email) {
  for (final student in students) {
    if (phone == student.phone && email == student.email) {
      print('Kosh keliniz ${student.name}');
      break;
    } else {
      print('Kchiresiz phon je email kata');
    }
  }
}
