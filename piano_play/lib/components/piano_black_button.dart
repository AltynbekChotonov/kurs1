import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton(this.nota, {Key? key, this.visible = true})
      : super(key: key);
  final String nota;
  final bool visible;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.5),
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
                Audio("assets/audios/$nota.wav"),
              );
            },
            onLongPress: () async {
              await AssetsAudioPlayer.newPlayer().open(
                Audio("assets/audios/$nota.wav"),
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
    );
  }
}
