import 'package:flutter/material.dart';
import 'package:shop/screens/home_screen.dart';
import 'package:shop/screens/login_screen.dart';
import 'package:shop/screens/signup_screen.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: welcome.id,
      debugShowCheckedModeBanner: false,
      routes: {
        welcome.id: (context) => const welcome(),
        '/login': (context) => const login(),
        '/signup': (context) => const signup(),
        '/home': (context) => const home(),
      },
    );
  }
}
