import 'package:efe/fourthP.dart';
import 'package:flutter/material.dart';

class thirdP extends StatelessWidget {
  const thirdP({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Register Page",
          style: TextStyle(fontSize: 19),
        ),
      ),
      body: thirdD(),
    );
  }
}

class thirdD extends StatefulWidget {
  const thirdD({super.key});
  @override
  State<thirdD> createState() => _thirdDState();
}

class _thirdDState extends State<thirdD> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;
    });
  }

  final textFieldFocusNode2 = FocusNode();
  bool _obscured2 = true;

  void _toggleObscured2() {
    setState(() {
      _obscured2 = !_obscured2;
      if (textFieldFocusNode2.hasPrimaryFocus) return;
      textFieldFocusNode2.canRequestFocus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/BK.jpg"),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 65),
        height: 230,
        width: 270,
        child: Image(
          image: AssetImage("assets/images/MyLogo.png"),
        ),
      ),
      Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 180),
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 4,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  hintText: "Enter your username",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 4),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  hintText: "Enter your email",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 4),
                  ),
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  hintText: "Enter your phone number",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                focusNode: textFieldFocusNode,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 4),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  hintText: "Enter your password",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured2,
                focusNode: textFieldFocusNode2,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 4),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured2,
                      child: Icon(
                        _obscured2
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  hintText: "Repeat password",
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              color: Colors.black,
              width: 360,
              height: 50,
              child: TextButton(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20,
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
          ],
        ),
      ),
    ]);
  }
}
