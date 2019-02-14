import 'package:flutter/material.dart';
import 'package:flutter_assignment/components/tabs/Map.dart';
import 'package:flutter_assignment/components/tabs/Notify.dart';
import 'package:flutter_assignment/components/tabs/Profile.dart';
import 'package:flutter_assignment/components/tabs/home.dart';
import 'package:flutter_assignment/components/tabs/Setup.dart';

// class MainPage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MainPageState();
//   }

// }

// class MainPageState extends State<MainPage>{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         chi
//       ),
//     );
//   }

// }

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.notifications)),
                Tab(icon: Icon(Icons.map)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.settings)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Home(),
              Notify(),
              Map(),
              Profile(),
              Setup()
            ],
          ),
        ),
      ),
    );
  }
}
