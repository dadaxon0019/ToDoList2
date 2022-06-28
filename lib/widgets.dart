import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String? title;
  final String? discription;
  TaskCardWidget({this.title, this.discription});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              discription ?? ('No Description Added !'),
              style: TextStyle(
                  fontSize: 16, color: Color(0xFF868290), height: 1.5),
            ),
          )
        ],
      ),
    );
  }
}

class ToDoWidget extends StatelessWidget {
  final String? text;
  final bool isDone;
  ToDoWidget({this.text, required this.isDone});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                color: isDone ? Color(0xFF7349FE) : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
                border: isDone
                    ? null
                    : Border.all(color: Color(0xff868290), width: 1.5)),
            child: Image(image: AssetImage('assets/images/check_icon.png')),
          ),
          Text(
            text ?? '(Unnamed ToDo)',
            style: TextStyle(
                color: isDone ? Color(0xFF211551) : Color(0xff868290),
                fontSize: 16,
                fontWeight: isDone ? FontWeight.bold : FontWeight.w500),
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
