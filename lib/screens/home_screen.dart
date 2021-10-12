import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/theme_provider.dart';
import 'package:shop/screens/list_screen.dart';
import 'package:shop/screens/purchased_screen.dart';
import 'package:shop/screens/settings_screen.dart';
import 'package:shop/screens/welcome_screen.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final _auth = FirebaseAuth.instance;

  final List<Map<String, Widget>> _pages = [
    {
      'page': listScreen(),
      'title': Text(
        'List',
        style: TextStyle(
            fontSize: 35, fontFamily: 'AmaticSC', fontWeight: FontWeight.bold),
      )
    },
    {
      'page': purchasedScreen(),
      'title': Text(
        'Purchased',
        style: TextStyle(
            fontSize: 35, fontFamily: 'AmaticSC', fontWeight: FontWeight.bold),
      )
    },
    {
      'page': SettingsScreen(),
      'title': Text(
        'Settings',
        style: TextStyle(
            fontSize: 35, fontFamily: 'AmaticSC', fontWeight: FontWeight.bold),
      )
    }
  ];

  int _selectPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final ThemeProvider = Provider.of<themeProvider>(context);

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: _pages[_selectPageIndex]['title'],
          backgroundColor: Colors.red,
          actions: [
            FlatButton(
                onPressed: () {
                  _auth.signOut();
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      welcome.id, (Route<dynamic> route) => false);
                },
                child: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 25,
                )),
          ]),
      body: _pages[_selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              title: Text(
                'List',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'AmaticSC',
                    fontWeight: FontWeight.bold),
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            title: Text('Purchased',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'AmaticSC',
                  fontWeight: FontWeight.bold,
                )),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text('Settings',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'AmaticSC',
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }
}
