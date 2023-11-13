import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:weather_app2/constants/api_const.dart';
import 'package:weather_app2/constants/app_colors.dart';
import 'package:weather_app2/constants/app_text.dart';
import 'package:weather_app2/constants/app_text_style.dart';
import 'package:weather_app2/models/weather.dart';

import 'components/custom_icon_button.dart';

const List citiles = <String>[
  'Bishkek',
  'Osh',
  'Jalal-Abad',
  'Karakol',
  'Batken',
  'Naryn',
  'Talas',
  'Tokmok',
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Weather? weather;

  Future<void> weatherLocatio() async {
    setState(() {
      weather = null;
    });
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always &&
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();
        final dio = Dio();
        final res = await dio.get(
            ApiConst.LatLongaddress(position.latitude, position.longitude));
        if (res.statusCode == 200) {
          weather = Weather(
            id: res.data['country']['weather'][0]['id'],
            main: res.data['country']['weather'][0]['main'],
            description: res.data['country']['weather'][0]['description'],
            icon: res.data['country']['weather'][0]['icon'],
            city: res.data['timezone'],
            temp: res.data['country']['temp'],
          );
        }
        setState(() {});
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();
      final dio = Dio();
      final res = await dio
          .get(ApiConst.LatLongaddress(position.latitude, position.longitude));
      if (res.statusCode == 200) {
        weather = Weather(
          id: res.data['country']['weather'][0]['id'],
          main: res.data['country']['weather'][0]['main'],
          description: res.data['country']['weather'][0]['description'],
          icon: res.data['country']['weather'][0]['icon'],
          city: res.data['timezone'],
          temp: res.data['country']['temp'],
        );
      }
      setState(() {});
    }
  }

  Future<void> weatherName([String? name]) async {
    // await Future.delayed(Duration(seconds: 3));
    final dio = Dio();
    final res = await dio.get(ApiConst.address(name ?? 'Bishkek'));
    if (res.statusCode == 200) {
      weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
        city: res.data['name'],
        temp: res.data["main"]['temp'],
        country: res.data['sys']['country'],
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    weatherName();
  }

  @override
  Widget build(BuildContext context) {
    log('max w ${MediaQuery.of(context).size.width}');
    log('max h ${MediaQuery.of(context).size.height}');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyle.AppBar,
        ),
      ),
      body: weather == null
          ? const Center(child: CircularProgressIndicator())
          : Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('weather.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        icon: Icons.near_me,
                        onPressed: () async {
                          await weatherLocatio();
                        },
                      ),
                      CustomIconButton(
                        icon: Icons.location_city,
                        onPressed: () {
                          showBottom();
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Text('${(weather!.temp - 273.15).floorToDouble()}',
                          style: AppTextStyle.body1),
                      Image.network(
                        ApiConst.getIcon(weather!.icon, 4),
                        height: 150,
                        fit: BoxFit.fitHeight,
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FittedBox(
                          child: Text(
                            weather!.description.replaceAll(' ', '\n'),
                            textAlign: TextAlign.right,
                            style: AppTextStyle.body2(60),
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Text(
                            weather!.city,
                            textAlign: TextAlign.right,
                            style: AppTextStyle.body1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  void showBottom() {
    showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.7,
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 7),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 18, 18, 18),
              border: Border.all(color: AppColors.white),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: ListView.builder(
                itemCount: citiles.length,
                itemBuilder: (BuildContext context, int index) {
                  final city = citiles[index];
                  return Card(
                      child: ListTile(
                    onTap: () async {
                      setState(() {
                        weather = null;
                      });
                      weatherName(city);
                      Navigator.pop(context);
                    },
                    title: Text(city),
                  ));
                }),
          );
        });
  }
}
