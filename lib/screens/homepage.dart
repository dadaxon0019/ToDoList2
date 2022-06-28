import 'package:flutter/material.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        color: Color(0XFFF6F6F6),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: Image(image: AssetImage('assets/images/logo.png'))),
                TaskCardWidget(
                    title: 'Get Started',
                    discription:
                        'Hello User Welcome to To Do List, this is a deffault track that you can edit or delete to start using the app.'),
                TaskCardWidget(),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: Color(0xFF7349FE),
                    borderRadius: BorderRadius.circular(20)),
                child: Image(image: AssetImage('assets/images/add_icon.png')),
              ),
            )
          ],
        ),
      )),
    );
  }
}
