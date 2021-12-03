import 'package:flutter/material.dart';
import 'package:todolist/widgets.dart';

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
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 32.0,
          ),
            color: const Color(0xFFF6F6F6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 32.0,
                  ),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 70,
                    height: 70,
                  ),
                ),
                TaskCardWidget(
                  title: "Get Started!",
                ),
                TaskCardWidget(),
              ],
            ),
        ),
      )
    );
  }
}
