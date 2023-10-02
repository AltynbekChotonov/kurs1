import 'package:flutter/material.dart';
import 'package:quiz_game_test_ful/continents/app_text.dart';
import 'package:quiz_game_test_ful/models/suroo.dart';

class Continent {
  const Continent(
      {required this.name,
      required this.icon,
      required this.color,
      this.suroo});

  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
}

final asia = Continent(
  name: AppText.asia,
  icon: "asia",
  color: Color(0xffFE8D7D),
  suroo: asiaQuestions,
);

const europe = Continent(
  name: AppText.europe,
  icon: "europe",
  color: Color(0xff7DA4FF),
);
const nAmerica = Continent(
  name: AppText.northAmerica,
  icon: "north_america",
  color: Color(0xffFFAD02),
);
const sAmerica = Continent(
  name: AppText.southAmerica,
  icon: "south_america",
  color: Color(0xffE7B1E5),
);
const africa = Continent(
  name: AppText.africa,
  icon: "africa",
  color: Color(0xffFFE52c),
);

const australia = Continent(
  name: AppText.australia,
  icon: "australia",
  color: Color(0xff60E280),
);

List<Continent> continents = [
  europe,
  asia,
  nAmerica,
  sAmerica,
  africa,
  australia,
];
