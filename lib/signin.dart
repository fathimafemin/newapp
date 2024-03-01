import 'package:flutter/material.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'SIGN IN',
            style: TextStyle(color: Colors.red),
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 30),
            child: TextField(
              controller: email,
              maxLines: 1,
              cursorColor: Colors.black,
              style: TextStyle(fontSize: 20, color: Colors.black),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  hintText: 'Enter Email Adress'),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, top: 30),
              child: TextField(
                controller: password,
                cursorColor: Colors.black,
                style: TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white70,
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  hintText: ('PASSWORD'),
                ),
              )),
        ),
        Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 16.0),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'sign in',
                  style: TextStyle(color: Colors.black),
                )),
          ),
        ),
        SizedBox(child: Center(child: Text('OR')),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16.0),
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'FACEBOOK LOGIN',
                style: TextStyle(color: Colors.black),
              )),
        ),
      ]),



    );
  }
}
