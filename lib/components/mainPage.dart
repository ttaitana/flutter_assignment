import 'package:flutter/material.dart';
import 'package:flutter_assignment/components/tabs/Map.dart';
import 'package:flutter_assignment/components/tabs/Notify.dart';
import 'package:flutter_assignment/components/tabs/Profile.dart';
import 'package:flutter_assignment/components/tabs/home.dart';
import 'package:flutter_assignment/components/tabs/Setup.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage>{
  int _currentIndex = 0;
  final List<Widget> _chlidren = [Home(), Notify(), Map(), Profile(), Setup()];
 List<String> title_name = ['Home', 'Notify', 'Map', 'Profile', 'Setup'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title_name[_currentIndex]),
          centerTitle: true,
        ),
        body: _chlidren.elementAt(_currentIndex),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.blue,
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: TextStyle(color: Color.fromRGBO(255, 255, 255, .5))),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(title_name[0]),
                // title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text(title_name[1]),
                // title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.map),
                title: Text(title_name[2]),
                // title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text(title_name[3]),
                // title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text(title_name[4]),
                // title: Text(''),
              )
            ],
            onTap: onTabTapped,
            currentIndex: _currentIndex,
          ),
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//         length: 5,
//         child: Scaffold(
//           appBar: AppBar(
//             bottom: TabBar(
//               tabs: [
//                 Tab(icon: Icon(Icons.home)),
//                 Tab(icon: Icon(Icons.notifications)),
//                 Tab(icon: Icon(Icons.map)),
//                 Tab(icon: Icon(Icons.person)),
//                 Tab(icon: Icon(Icons.settings)),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: [
//               Home(),
//               Notify(),
//               Map(),
//               Profile(),
//               Setup()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
