import 'package:flutter/material.dart';
import 'package:jastip_v2/product.dart';
import './product.dart';

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
            Padding(
              padding: const EdgeInsets.only(top:20.0, left: 8.0, right: 8.0,bottom: 4.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductPage(),
                            ));
                },
              child: new Container(
                color: Color(0xffeeeeee),
                height: 100.0,
                width: 340.0,
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0, right: 20.0, top: 16.0, bottom: 16.0),
                      child: new Image.asset("img/korea.png"),
                    ),
                    new Text("Open Pre Order\n15-30 Oktober")
                  ],
                ),

              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 8.0),
              child: new Container(
                color: Color(0xffeeeeee),
                height: 100.0,
                width: 340.0,
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0, right: 20.0, top: 16.0, bottom: 16.0),
                      child: new Image.asset("img/jepang.png"),
                    ),
                    new Text("Open Pre Order\n15-30 Oktober")
                  ],
                ),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
