import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;

  const TaskCardWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: const EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "Aucun nom de tâche",
            style: const TextStyle(
              color: Color(0xFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              "Hello World ! Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
              style: TextStyle(
                fontSize: 16.0,
                color: Color(0xFF211551),
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
