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
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: const [
            Image(
              image: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                  width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
