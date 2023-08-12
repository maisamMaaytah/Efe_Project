import 'package:efe/fifthP.dart';
import 'package:efe/seventhP.dart';
import 'package:efe/sixthP.dart';
import 'package:flutter/material.dart';

class fourthP extends StatelessWidget {
  const fourthP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(),
      body: fourthD(),
    );
  }
}

class fourthD extends StatefulWidget {
  const fourthD({super.key});
  @override
  State<fourthD> createState() => _fourthDState();
}

class _fourthDState extends State<fourthD> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 70),
          child: Image(
            color: Color.fromARGB(255, 246, 243, 243).withOpacity(0.6),
            colorBlendMode: BlendMode.modulate,
            image: AssetImage("assets/images/PG2.jpg"),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                color: Colors.black,
                width: 400,
                height: 89,
                child: TextButton(
                  child: Container(
                    margin: EdgeInsets.only(right: 235),
                    child: Text(
                      'FACE MAKEUP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => fifthP(),
                    ))
                  },
                ),
              ),
              Container(
                color: Colors.black,
                margin: EdgeInsets.only(top: 10),
                width: 400,
                height: 89,
                child: TextButton(
                  child: Container(
                    margin: EdgeInsets.only(right: 250),
                    child: Text(
                      'LIP MAKEUP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => sixthP(),
                    ))
                  },
                ),
              ),
              Container(
                color: Colors.black,
                margin: EdgeInsets.only(top: 10),
                width: 400,
                height: 89,
                child: TextButton(
                  child: Container(
                    margin: EdgeInsets.only(right: 250),
                    child: Text(
                      'EYE MAKEUP',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => seventhP(),
                    ))
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
