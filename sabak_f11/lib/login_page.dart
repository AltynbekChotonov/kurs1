import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff076650),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'ТАПШЫРМА -04',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 34,
                      backgroundImage: AssetImage('image/mobile-logo6.jpg'),
                      // child: Image.asset(
                      //   'image/mobile-logo6.jpg',
                      //   width: 80,
                      //   height: 80,
                      // ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset(
                        'image/mobile-logo6.jpg',
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  'Altynbek Chotonov',
                  style:
                      GoogleFonts.pacifico(color: Colors.white, fontSize: 30),
                ),
                Text(
                  'Flutter DEVELOPER',
                  style: GoogleFonts.cabin(
                      color: const Color.fromARGB(255, 111, 226, 200),
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                const Divider(
                  color: Color.fromARGB(255, 100, 230, 199),
                  height: 20,
                  thickness: 1,
                  indent: 150,
                  endIndent: 150,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      initialValue: "+996778578790",
                      style: const TextStyle(
                        color: Color(0xff076650),
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(
                          Icons.phone,
                          size: 25,
                          color: Color(0xff076650),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      initialValue: "altynbek@gmail.com",
                      style: const TextStyle(
                        color: Color(0xff076650),
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        isDense: true,
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Icon(
                          Icons.mail,
                          size: 25,
                          color: Color(0xff076650),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 40, vertical: 10),
                    side: const BorderSide(
                      width: 1.5,
                      color: Colors.white,
                      style: BorderStyle.solid,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Sing In',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
