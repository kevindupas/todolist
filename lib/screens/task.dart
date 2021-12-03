import 'package:flutter/material.dart';
import 'package:todolist/database_helper.dart';
import 'package:todolist/widgets.dart';

class Task extends StatefulWidget {

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 24.0,
                      bottom: 6.0,
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image.asset(
                              'assets/images/back_arrow_icon.png',
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            onSubmitted: (value) async {
                              if(value != "") {
                                DatabaseHelper _dbHelper = DatabaseHelper();

                                Task _newTask = Task(
                                  title: value,
                                );
                                await _dbHelper.insertTask(_newTask)
                              }
                            },
                            decoration: InputDecoration(
                              hintText: "Saisir un titre..",
                              border: InputBorder.none,
                            ),
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF211551),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      bottom: 12.0,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Saisir une description..",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 24.0
                          )
                      ),
                    ),
                  ),
                  TodoWidget(
                    text: "Tâche 1",
                    isDone : false,
                  ),
                  TodoWidget(
                    text: "Tâche 2",
                    isDone : true,
                  ),
                  TodoWidget(
                    text: "Tâche 3",
                    isDone : false,
                  ),
                  TodoWidget(
                    isDone : false,
                  ),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 24.0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => Task()
                      ),
                    );
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFFFE3577)
                    ),
                    child: Image.asset(
                      'assets/images/delete_icon.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
