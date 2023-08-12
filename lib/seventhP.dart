import 'package:flutter/material.dart';

class seventhP extends StatelessWidget {
  const seventhP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "EYE MAKEUP",
          style: TextStyle(fontSize: 19),
        ),
      ),
      body: seventhD(),
    );
  }
}

class seventhD extends StatefulWidget {
  const seventhD({super.key});

  @override
  State<seventhD> createState() => _seventhDState();
}

class _seventhDState extends State<seventhD> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
