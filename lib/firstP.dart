import 'package:efe/OnBoarding/OnBoardingScreen.dart';

import 'package:flutter/material.dart';

class firstP extends StatefulWidget {
  const firstP({super.key});
  @override
  State<firstP> createState() => _firstPState();
}

class _firstPState extends State<firstP> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) {
            return OnBoardingScreen();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: firstD());
  }
}

class firstD extends StatelessWidget {
  const firstD({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image(
              color: Colors.white.withOpacity(0.3),
              colorBlendMode: BlendMode.modulate,
              height: double.infinity,
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/BK.jpg",
              )),
        ),
        Center(
            child: Container(
          child: Image(image: AssetImage("assets/images/MyLogo.png")),
          height: 400,
          width: 400,
        )),
      ],
    );
  }
}
