class ApiConst {
  static String address(String name) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$name,&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String LatLongaddress(double lat, double lang) =>
      'https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$lang&exclude=hourly,daily&appid=41aa18abb8974c0ea27098038f6feb1b';

  static String getIcon(String iconcode, int size) {
    return 'http://openweathermap.org/img/wn/$iconcode@${size}x.png';
  }
}
