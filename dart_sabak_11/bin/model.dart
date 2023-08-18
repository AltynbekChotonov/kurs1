// ignore_for_file: public_member_api_docs, sort_constructors_first
class Student {
  final int id;
  final String name;
  final String lastName;
  final String email;
  final String gender;
  final String? jeri;
  int group;
  String phone;
  bool married;
  int? age;
  String? address;

  Student({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.gender,
    this.jeri,
    required this.group,
    required this.phone,
    required this.married,
    this.age,
    this.address,
  });
}

final bakyt = Student(
  id: 1,
  name: 'bakyt',
  lastName: 'Djunushov',
  email: 'Bahanur2023@gmail.com',
  group: 1,
  phone: '+996222222085',
  address: 'Bishkek',
  married: true,
  jeri: 'Issyk kol',
  gender: 'M',
);

final Samara = Student(
  id: 2,
  name: 'Samara',
  lastName: 'Stambekova',
  email: 'stambekova1404@gmail.com',
  group: 1,
  phone: '+996770170608',
  address: 'Osh',
  married: true,
  jeri: 'Jalal-Abad',
  gender: 'F',
);

final Nargiza = Student(
  id: 3,
  name: 'Nargiza',
  lastName: 'Kulmamyrova',
  email: 'kulm1987@gmail.com',
  group: 1,
  phone: '+7965 311 19 87',
  address: 'Moscow',
  married: true,
  jeri: 'Bishkek',
  gender: 'F',
);

final Nurkadyr = Student(
  id: 4,
  name: 'Nurkadyr',
  lastName: 'Asanbek uulu',
  email: 'nurkadyr030100@gmail.com',
  group: 1,
  phone: '+996050512',
  address: 'Evope',
  married: true,
  jeri: 'Bishkek',
  gender: 'M',
);
