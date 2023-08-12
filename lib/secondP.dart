import 'package:efe/fourthP.dart';
import 'package:efe/thirdP.dart';
import 'package:flutter/material.dart';

class secondP extends StatelessWidget {
  const secondP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: secondD(),
    );
  }
}

class secondD extends StatefulWidget {
  const secondD({super.key});
  @override
  State<secondD> createState() => _secondDState();
}

class _secondDState extends State<secondD> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/BK.jpg"),
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
      ),
      SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Image(
            height: 350,
            width: 350,
            image: AssetImage("assets/images/MyLogo.png"),
          ),
        ),
      ),
      Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 280),
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 4,
                    ),
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 250,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 4,
                    ),
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              color: Colors.black,
              margin: EdgeInsets.only(top: 20),
              width: 120,
              height: 60,
              child: TextButton(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => fourthP(),
                  ))
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Create account?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                  ),
                  onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => thirdP(),
                    ))
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
