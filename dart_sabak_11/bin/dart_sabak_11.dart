import 'package:dart_sabak_11/dart_sabak_11.dart' as dart_sabak_11;

import 'model.dart';

final students = <Student>[bakyt, Samara, Nargiza, Nurkadyr];

void main(List<String> arguments) {
  controlEmailPhone('+996050512', 'nurkadyr030100@gmail.com');
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
