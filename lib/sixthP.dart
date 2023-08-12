import 'package:flutter/material.dart';

class sixthP extends StatelessWidget {
  const sixthP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "LIP MAKEUP",
          style: TextStyle(fontSize: 19),
        ),
      ),
      body: sixthD(),
    );
  }
}

class sixthD extends StatefulWidget {
  const sixthD({super.key});

  @override
  State<sixthD> createState() => _sixthDState();
}

class _sixthDState extends State<sixthD> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
