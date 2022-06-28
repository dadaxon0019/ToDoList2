import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get Started !',
            style: TextStyle(
              color: Color(0xFF211551),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Hello User Welcome to To Do List, this is a deffault track that you can edit or delete to start using the app.',
              style: TextStyle(
                  fontSize: 16, color: Color(0xFF868290), height: 1.5),
            ),
          )
        ],
      ),
    );
  }
}
