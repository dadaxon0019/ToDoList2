import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/taskpage.dart';
import 'package:flutter_application_1/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24),
        color: Color(0XFFF6F6F6),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 32, top: 32),
                    child: Image(image: AssetImage('assets/images/logo.png'))),
                Expanded(
                  child: ListView(
                    children: [
                      TaskCardWidget(
                          title: 'Get Started',
                          discription:
                              'Hello User Welcome to To Do List, this is a deffault track that you can edit or delete to start using the app.'),
                      TaskCardWidget(),
                      TaskCardWidget(),
                      TaskCardWidget(),
                      TaskCardWidget(),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 24,
              right: 0,
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
                      color: Color(0xFF7349FE),
                      borderRadius: BorderRadius.circular(20)),
                  child: Image(image: AssetImage('assets/images/add_icon.png')),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
