import 'package:flutter/material.dart';
import 'package:piano_app/components/piano_white_button.dart';

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
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PianoWhiteButton(Colors.white),
                      PianoWhiteButton(Colors.white),
                      PianoWhiteButton(Colors.white),
                      PianoWhiteButton(Colors.white),
                      PianoWhiteButton(Colors.white),
                      PianoWhiteButton(Colors.white),
                      PianoWhiteButton(Colors.white),
                    ],
                  ),
                  Positioned(
                    left: 40.0,
                    right: 0.0,
                    top: 0.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoBlackButton(),
                        PianoBlackButton(),
                        PianoBlackButton(),
                        PianoBlackButton(visible: false),
                        PianoBlackButton(),
                        PianoBlackButton(),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({Key? key, this.visible = true}) : super(key: key);
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
      child: SizedBox(
        width: 63,
        height: 150,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => Colors.black,
                ),
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) {
                    return states.contains(MaterialState.pressed)
                        ? Color.fromARGB(255, 69, 68, 68)
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
        ),
      ),
    );
  }
}
