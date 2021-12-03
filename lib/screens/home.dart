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
          ),
            color: Color(0xFFF6F6F6),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 32.0,
                        bottom: 32.0,
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: const [
                          TaskCardWidget(
                            title: "Titre 1",
                            desc: "Description 1",
                          ),
                          TaskCardWidget(),
                          TaskCardWidget(),
                          TaskCardWidget(),
                          TaskCardWidget(),
                          TaskCardWidget(
                            title: "Titre 1",
                            desc: "Description 1",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 24.0,
                  right: 0.0,
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFF211551)
                    ),
                    child: Image.asset(
                      'assets/images/add_icon.png',
                      width: 70,
                      height: 70,
                    ),
                  ),
                )
              ],
            ),
        ),
      )
    );
  }
}
