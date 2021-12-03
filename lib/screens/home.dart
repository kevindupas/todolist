import 'package:flutter/material.dart';
import 'package:todolist/database_helper.dart';
import 'package:todolist/screens/taskpage.dart';
import 'package:todolist/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  DatabaseHelper _dbHelper = DatabaseHelper();

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
                        width: 40,
                        height: 40,
                      ),
                    ),
                    Expanded(
                      child: FutureBuilder(
                        initialData: [],
                        future: _dbHelper.getTasks(),
                        builder: (context, snapshot) {
                          return ScrollConfiguration(
                            behavior: NoGlowBehaviour(),
                            child: ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Taskpage(
                                          task: snapshot.data[index],
                                        ),
                                      ),
                                    ).then(
                                          (value) {
                                        setState(() {});
                                      },
                                    );
                                  },
                                  child: TaskCardWidget(
                                    title: snapshot.data[index].title,
                                    desc: snapshot.data[index].description,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
                Positioned(
                  bottom: 24.0,
                  right: 0.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Taskpage(
                              task: null,
                            )),
                      ).then((value) {
                        setState(() {});
                      });
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF1248BF), Color(0xFF1D57CE)],
                            begin: Alignment(0.0, -1.0),
                            end: Alignment(0.0, 1.0)
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color(0xFF211551)
                      ),
                      child: Image.asset(
                        'assets/images/add_icon.png',
                        width: 40,
                        height: 40,
                      ),
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
