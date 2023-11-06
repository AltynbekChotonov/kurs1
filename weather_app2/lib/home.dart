// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:weather_app2/constants/api_const.dart';
import 'package:weather_app2/constants/app_colors.dart';
import 'package:weather_app2/constants/app_text.dart';
import 'package:weather_app2/constants/app_text_style.dart';
import 'package:weather_app2/models/weather.dart';

import 'components/custom_icon_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Weather?>? fetchData() async {
    // await Future.delayed(Duration(seconds: 3));
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
      body: FutureBuilder<Weather?>(
          future: fetchData(),
          builder: (context, joop) {
            if (joop.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (joop.connectionState == ConnectionState.none) {
              return Text('Интернертен байланышы жакшы эмес');
            } else if (joop.connectionState == ConnectionState.done) {
              if (joop.hasError) {
                return Text('${joop.error}');
              } else if (joop.hasData) {
                final Weather = joop.data!;
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
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
                          CustomIconButton(icon: Icons.near_me),
                          CustomIconButton(icon: Icons.location_city),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text('${Weather.temp}', style: AppTextStyle.body1),
                          Image.network(
                            ApiConst.getIcon('11n', 4),
                            height: 150,
                            fit: BoxFit.fitHeight,
                          )
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "${Weather.description}".replaceAll(' ', '\n'),
                              textAlign: TextAlign.right,
                              style: AppTextStyle.body2(60),
                            ),
                            const SizedBox(width: 20),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            Weather.city,
                            textAlign: TextAlign.right,
                            style: AppTextStyle.body1,
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                );
              } else {
                return const Text(
                    'Бир белгисиз ката болду сураныч кайра кириниз... ');
              }
            } else {
              return const Text(
                  'Бир белгисиз ката болду сураныч кайра кириниз... ');
            }
          }),
    );
  }
}
