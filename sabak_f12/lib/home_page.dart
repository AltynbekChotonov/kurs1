import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC107),
      appBar: AppBar(
        elevation: 7.0,
        shadowColor: Colors.black,
        centerTitle: true,
        backgroundColor: const Color(0xffFEC107),
        title: const Text(
          'ТАПШЫРМА - 03',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'I`m Rich',
              style: GoogleFonts.sofia(
                  color: Colors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  height: 2.3),
            ),
            Text(
              'I`m Rich',
              style: GoogleFonts.pacifico(
                color: const Color(0xffF5423A),
                fontSize: 48,
                fontWeight: FontWeight.w700,
                height: 1,
              ),
            ),
            Image.asset('/image/diamond_kurs_1.png'),
          ],
        ),
      ),
    );
  }
}
