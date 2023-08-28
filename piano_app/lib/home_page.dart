import 'package:flutter/material.dart';
import 'package:piano_app/components/piano_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('My Piano App'),
      ),
      body: Column(children: [
        const Expanded(
          flex: 1,
          child: Center(
            child: Text('do re ....'),
          ),
        ),
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              ListView.builder(
                itemCount: 11,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return PianoWhiteButton(Colors.white);
                },
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 11,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.black,
                            ),
                            overlayColor: MaterialStateProperty.resolveWith(
                              (states) {
                                return states.contains(MaterialState.pressed)
                                    ? Color.fromARGB(255, 182, 180, 180)
                                    : null;
                              },
                            ),
                          ),
                          onPressed: () {},
                          child: const Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'f3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ))),
                    );
                  },
                ),
              ),

              //   Padding(
              //     padding: const EdgeInsets.all(2.0),
              //     child: ElevatedButton(
              //       style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.resolveWith(
              //           (states) => Colors.white,
              //         ),
              //         overlayColor: MaterialStateProperty.resolveWith(
              //           (states) {
              //             return states.contains(MaterialState.pressed)
              //                 ? Color.fromARGB(255, 182, 180, 180)
              //                 : null;
              //           },
              //         ),
              //       ),
              //       onPressed: () {},
              //       child: const Align(
              //         alignment: Alignment.bottomCenter,
              //         child: Padding(
              //           padding: EdgeInsets.only(bottom: 20),
              //           child: Text(
              //             'f3',
              //             style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 20,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   );
              // }),
            ],
          ),
        ),
      ]),
    );
  }
}
