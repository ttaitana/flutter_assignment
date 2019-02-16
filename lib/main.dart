import 'package:flutter/material.dart';
import 'package:flutter_assignment/components/loginPage.dart';
import 'package:flutter_assignment/components/register.dart';
import 'package:flutter_assignment/components/mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Assgiment",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
      '/' : (context) => LoginPage(),
      '/register' : (context) => Registation(),
      '/home': (context) => MainPage()
      },
    );
  }
}

// class MyHOmePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }

// }
