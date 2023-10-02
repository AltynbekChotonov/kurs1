// ignore_for_file: public_member_api_docs, sort_constructors_first
class Suroo {
  const Suroo({
    required this.text,
    required this.jooptor,
    required this.image,
  });
  final String text;
  final List<joop> jooptor;
  final String image;
}

List<Suroo> asiaQuestions = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10];

class joop {
  const joop({
    required this.text,
    this.isTrue = false,
  });
  final String text;
  final bool isTrue;
}

const s1 = Suroo(
    text: 'ashhabad',
    jooptor: [
      joop(text: 'Kyrgyzstan'),
      joop(text: 'Koreya'),
      joop(text: 'Afganistan'),
      joop(text: 'Turkmenistan', isTrue: true),
    ],
    image: 'ashhabad');

const s2 = Suroo(
    text: 'Astana',
    jooptor: [
      joop(text: 'Kazakhstan', isTrue: true),
      joop(text: 'Japan'),
      joop(text: 'Russia'),
      joop(text: 'Turkmenistan'),
    ],
    image: 'astana');

const s3 = Suroo(
    text: 'Bishkek',
    jooptor: [
      joop(text: 'Kyrgyzstan', isTrue: true),
      joop(text: 'Singapur'),
      joop(text: 'Britaniya'),
      joop(text: 'Swessaria'),
    ],
    image: 'bishkek');

const s4 = Suroo(
    text: 'Dushanbe',
    jooptor: [
      joop(text: 'Kyrgyzstan'),
      joop(text: 'Koreya'),
      joop(text: 'Afganistan'),
      joop(text: 'Tajikstan', isTrue: true),
    ],
    image: 'dushanbe');

const s5 = Suroo(
    text: 'New-delhi',
    jooptor: [
      joop(text: 'Iran'),
      joop(text: 'Pakistan'),
      joop(text: 'India', isTrue: true),
      joop(text: 'Indonezia'),
    ],
    image: 'new-delhi');

const s6 = Suroo(
    text: 'Pekin',
    jooptor: [
      joop(text: 'Uzbekistan'),
      joop(text: 'China', isTrue: true),
      joop(text: 'Koreya'),
      joop(text: 'Taiwan'),
    ],
    image: 'pekin');

const s7 = Suroo(
    text: 'Seul',
    jooptor: [
      joop(text: 'Koreya', isTrue: true),
      joop(text: 'China'),
      joop(text: 'Vetnam'),
      joop(text: 'Tailand'),
    ],
    image: 'seul');

const s8 = Suroo(
    text: 'Tashkent',
    jooptor: [
      joop(text: 'Kyrgyzstan'),
      joop(text: 'Tajikstan'),
      joop(text: 'Uzbekistan', isTrue: true),
      joop(text: 'Azerbaijan'),
    ],
    image: 'tashkent');

const s9 = Suroo(
    text: 'Tokyo',
    jooptor: [
      joop(text: 'Japonya', isTrue: true),
      joop(text: 'Singapur'),
      joop(text: 'Mianma'),
      joop(text: 'Kongo'),
    ],
    image: 'tokyo');

const s10 = Suroo(
    text: 'Ulan_bator',
    jooptor: [
      joop(text: 'Mangolya', isTrue: true),
      joop(text: 'Nepal'),
      joop(text: 'Fransia'),
      joop(text: 'kanberra'),
    ],
    image: 'ulan_bator');
