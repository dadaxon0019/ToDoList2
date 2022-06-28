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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(bottom: 32),
                child: Image(image: AssetImage('assets/images/logo.png'))),
            TaskCardWidget(),
          ],
        ),
      )),
    );
  }
}
