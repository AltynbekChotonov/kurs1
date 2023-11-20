import 'package:flutter/material.dart';

import 'counter/app.dart';
import 'counter_getx/add.dart';
/*
Sate Management

1 ---- керексиз юайды кайра курба 
2 ----- Widget дарагына каалаган жерине датаны жеткирип берет
3 ---- Логика коддорун UI коддорунан болунуп турат 



Getx [MVC] =>  Model-view-Counter ---web
Mobx [MVVM]=>  Model-view-view-Model ---mobile
Bloc bloc pattern ==== кийин отобуз 

*/

void main() {
  runApp(const MyAppGetx());
}
