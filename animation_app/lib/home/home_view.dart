import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isfillSan = false;
  Duration duration = const Duration(seconds: 3);
  @override
  void initState() {
    super.initState();
    changeMode();
  }

  Future<void> changeMode() async {
    await Future<void>.delayed(duration);
    setState(() {
      isfillSan = true;
    });
  }

  Widget build(BuildContext context) {
    List<Color> lightBgColor = [
      const Color(0xff922A7F),
      const Color(0xffCE577D),
      const Color(0xffFF9484),
      if (isfillSan) const Color(0xffFF9080),
    ];

    var darkBgColor = const [
      Color(0xff0F1746),
      Color(0xff283886),
      Color(0xff376AE2),
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnimatedContainer(
        duration: duration,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.bottomCenter,
              colors: isfillSan ? lightBgColor : darkBgColor),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: -34,
              // duration: duration,
              child: Image.asset(
                '/land_tree_light.png',
                height: height * 0.48,
                fit: BoxFit.fitHeight,
              ),
            ),
            AnimatedPositioned(
              // left: 0,
              // right: 0,
              // bottom: isFullSun ? 400 : -150,
              duration: duration,
              child: SvgPicture.asset('/sun.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
