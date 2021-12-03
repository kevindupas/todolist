import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String ?title;
  final String ?desc;

  const TaskCardWidget({this.title, this.desc});

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
            title ?? "Aucun titre",
            style: const TextStyle(
              color: Color(0xFF211551),
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              desc ?? "Aucune description",
              style: const TextStyle(
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

class TodoWidget extends StatelessWidget {

  final String ?text;
  final bool isDone;

  const TodoWidget({this.text, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            margin: const EdgeInsets.only(
              right: 16.0,
            ),
            decoration: BoxDecoration(
              color: isDone ? const Color(0xFF211551) : Colors.transparent,
              borderRadius: BorderRadius.circular(6.0),
              border: isDone ? null : Border.all(
                color: const Color(0xFF211551),
                width: 1.5
              )
            ),
            child: Image.asset(
              'assets/images/check_icon.png',
            ),
          ),
          Text(
            text ?? "Pas de titre",
            style: TextStyle(
              color: isDone ? const Color(0xFF211551) : const Color(0xFF86829D),
              fontSize: 16.0,
              decoration: isDone ? TextDecoration.lineThrough : TextDecoration.none,
              decorationThickness: 3.0,
              fontWeight: isDone ? FontWeight.w600 : FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}