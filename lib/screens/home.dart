import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child : Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0,
          ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 70,
                  height: 70,
                ),
              ],
            ),
        ),
      )
    );
  }
}
