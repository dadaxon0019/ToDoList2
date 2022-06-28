import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homepage.dart';
import 'package:flutter_application_1/widgets.dart';

class TaskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TaskPageState();
  }
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 6),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image(
                              image: AssetImage(
                                  'assets/images/back_arrow_icon.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter Task Title..",
                                border: InputBorder.none),
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF211551)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Discription for the Task..',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 24)),
                    ),
                  ),
                  ToDoWidget(
                    text: 'Create you firtst Task',
                    isDone: false,
                  ),
                  ToDoWidget(
                    text: 'Create you first todo as Well',
                    isDone: false,
                  ),
                  ToDoWidget(
                    isDone: true,
                  ),
                  ToDoWidget(
                    isDone: true,
                  ),
                ],
              ),
              Positioned(
                bottom: 24,
                right: 24,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskPage()),
                    );
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xFFFE3577),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image(
                        image: AssetImage('assets/images/delete_icon.png')),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
