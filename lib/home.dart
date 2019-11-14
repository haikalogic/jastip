import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Color(0xFF2d98da),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'img/logo.png',
              width: 180,
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: new Text("WELCOME NITIP",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                  )),
            ),
            new Container(
              margin: EdgeInsets.all(10),
              height: 2,
              width: 200,
              color: Color(0xFF2d98da),
            ),
            new Container(
              width: 300.0,
              height: 100.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            )
          ],
        ),
      ),
    );
  }
}
