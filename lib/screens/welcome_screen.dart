// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/coins_provider.dart';
import 'package:shop/providers/items_provider.dart';
import 'package:shop/providers/theme_provider.dart';

class welcome extends StatefulWidget {
  static String id = 'welcome';
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => themeProvider(),
        ),
        // ChangeNotifierProvider<itemProvider>(
        //   create: (context) => itemProvider(),
        // ),
        // ChangeNotifierProvider<coinsProvider>(
        //   create: (context) => coinsProvider(),
        // )
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: 250,
                  child: Image.asset(
                    'assets/images/shop.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: TyperAnimatedTextKit(
                    speed: Duration(milliseconds: 100),
                    isRepeatingAnimation: false,
                    text: ['Hello Beautiful!'],
                    textStyle: TextStyle(
                        fontSize: 65,
                        fontFamily: 'AmaticSC',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: TyperAnimatedTextKit(
                    repeatForever: false,
                    speed: Duration(milliseconds: 100),
                    isRepeatingAnimation: false,
                    text: ['Welcome to our appliction'],
                    textStyle: TextStyle(
                        fontSize: 39,
                        fontFamily: 'AmaticSC',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/login',
                    );
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black)),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontFamily: 'AmaticSC',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.black)),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontFamily: 'AmaticSC',
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/signup',
                    );
                  },
                ),
                SizedBox(height: 10),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot My Password',
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'AmaticSC',
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
