import 'package:flutter/material.dart';
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
        child: Column(
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
            Padding(
              padding: EdgeInsets.only(
                bottom: 12.0,
              ),
              child: const TextField(
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
      )
    );
  }
}
