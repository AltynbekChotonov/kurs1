import 'package:assets_audio_player/assets_audio_player.dart';
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
      drawer: const Drawer(),
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
              return const Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PianoWhiteButton('do'),
                      PianoWhiteButton('re'),
                      PianoWhiteButton('mi'),
                      PianoWhiteButton('fa'),
                      PianoWhiteButton('lya'),
                      PianoWhiteButton('si'),
                      PianoWhiteButton('do2'),
                    ],
                  ),
                  Positioned(
                    left: 40.0,
                    right: 0.0,
                    top: 0.0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoBlackButton('do'),
                        PianoBlackButton('re'),
                        PianoBlackButton('mi'),
                        PianoBlackButton('fa', visible: false),
                        PianoBlackButton('lya'),
                        PianoBlackButton('si'),
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
  const PianoBlackButton(this.nota, {Key? key, this.visible = true})
      : super(key: key);
  final bool visible;
  final String nota;

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
                        ? const Color.fromARGB(255, 69, 68, 68)
                        : null;
                  },
                ),
              ),
              onPressed: () async {
                await AssetsAudioPlayer.newPlayer().open(
                  Audio("/audios/$nota.wav"),
                );
              },
              onLongPress: () async {
                await AssetsAudioPlayer.newPlayer().open(
                  Audio("/audios/$nota.wav"),
                );
              },
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
