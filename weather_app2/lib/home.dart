import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app2/constants/api_const.dart';
import 'package:weather_app2/models/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Weather?> fetchData() async {
    final dio = Dio();
    final res = await dio.get(ApiConst.address);
    if (res.statusCode == 200) {
      final Weather weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
        city: res.data['name'],
        temp: res.data["main"]['temp'],
        country: res.data['sys']['country'],
      );
      return weather;
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (ctx, sn) {
            if (sn.hasData) {
              return Column(
                children: [
                  Text(sn.data!.id.toString()),
                  Text(sn.data!.description),
                  Text(sn.data!.main),
                  Text(sn.data!.icon),
                  Text(sn.data!.city),
                  Text(sn.data!.country),
                  Text(sn.data!.temp.toString()),
                ],
              );
            } else if (sn.hasError) {
              return Text(sn.error.toString());
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
