import 'package:flutter/material.dart';
import './halaman.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  int _index = 0;
  var staticAppBar;
  final _widgetOption = [
    halaman(),
    halaman(),
    halaman(),
  ];

  void incrementTab(index) {
    setState(() {
      _index = index;

      if (_index == 0){
        staticAppBar = Text("Home");
      }
      if  (_index == 1) {
        staticAppBar = Text ("Cart");
      }
      if (_index == 2){
        staticAppBar = Text("Profil");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: staticAppBar,
        leading: Icon(Icons.search),
      ),
      drawer: Drawer(

      ),
      body: _widgetOption.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          backgroundColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
                BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Cart"),
                activeIcon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                )),
                BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text("Profile"),
                activeIcon: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ))
          ],
          onTap: (index){
            incrementTab(index);
          },
          ),
    );
  }
}