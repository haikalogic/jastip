import 'package:flutter/material.dart';
import './home.dart';

TextEditingController email = new TextEditingController();
TextEditingController password = new TextEditingController();

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Colors.transparent),
      ),
      body: Container(
        width: double.infinity,
        child: new Column(
          children: <Widget>[
            new Image.asset('img/logo.png', width: 180, height: 180,),
            // new Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Padding(
            //       padding: const EdgeInsets.only(
            //           top: 8.0, left: 8.0, right: 8.0, bottom: 24.0),
            //       child: new Text(
            //         "Nitip Dong!",
            //         style: new TextStyle(fontFamily: 'Ceria',fontSize: 20.0),
            //       ),
            //     )
            //   ],
            // ),
            Padding(
              //KOLOM EMAIL
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                controller: email,
                decoration: new InputDecoration(labelText: "Email or Username"),
              ),
            ),
            new SizedBox(
              height: 10.0,
            ),
            Padding(
              //KOLOM PASSWORD
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: new TextField(
                controller: password,
                obscureText: true,
                decoration: new InputDecoration(labelText: "Password"),
              ),
            ),
            new Row(
              //Button Facebook dan Button Google
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 10.0, top: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HomePage()));
                        if (email.text == "user" && password.text == "user") {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        // email: email.text,
                                        // password: password.text,
                                      )));
                        } 
                      },
                      
                      child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF2d98da),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Text(
                          "Login",
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 20.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: new Text(
                        "Forgot Password?",
                        style: new TextStyle(
                            fontSize: 16.0, color: Color(0xFF2d98da)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Colors.orange,
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Text(
                          "Sign in With Google",
                          style: new TextStyle(
                              fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, top: 16.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: new Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Color(0xFF2d98da),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Text(
                          "Sign in With Phone",
                          style: new TextStyle(
                              fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
            // Expanded(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: <Widget>[
            //       Padding(
            //         padding: const EdgeInsets.only(bottom: 20.0),
            //         child: new Text(
            //           "Create a New Account",
            //           style: new TextStyle(
            //               fontSize: 16.0,
            //               color: Colors.greenAccent[700],
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
