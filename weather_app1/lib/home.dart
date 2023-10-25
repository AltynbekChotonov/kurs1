import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'constants/api_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Future<dynamic> festData() async {
      final dio = Dio();
      final Response = await dio.get(ApiConst.address);
      return Response;
    }

    @override
    void initState() {
      super.initState();
      festData();
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('HomePage'),
        ),
        body: FutureBuilder(
          future: festData(),
          builder: (ctx, sn) {
            return Text(sn.toString());
          },
        ));
  }
}
