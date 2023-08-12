import 'package:flutter/material.dart';

class fifthP extends StatelessWidget {
  const fifthP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "FACE MAKEUP",
          style: TextStyle(fontSize: 19),
        ),
      ),
      body: fifthD(),
    );
  }
}

class fifthD extends StatefulWidget {
  const fifthD({super.key});

  @override
  State<fifthD> createState() => _fifthDState();
}

class _fifthDState extends State<fifthD> {
//List face=[];

  @override
  Widget build(BuildContext context) {
    return Container();
    //GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: ((context, i) {}));
  }
}
