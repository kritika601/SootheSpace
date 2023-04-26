import 'package:flutter/material.dart';
import 'package:soothe_space/screens/profile_screen.dart';
import 'package:soothe_space/screens/quiz_screen1.dart';
import 'package:soothe_space/screens/recommended_vr_environments.dart';
import 'package:soothe_space/screens/main_home_screen.dart';
import 'package:soothe_space/screens/expert_screen.dart';
import 'package:soothe_space/screens/quiz_screen2.dart';
import 'package:soothe_space/screens/quiz_screen3.dart';
import 'package:soothe_space/screens/resources_screen.dart';
import 'package:soothe_space/screens/vr_screen1.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({Key? key}) : super(key: key);

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int _index=0;

  List <Widget> _screens=[
    Home(),
    Experts(),
    Resources(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: index,
      //   children: const [
      //     Home(),
      //     Experts(),
      //     Resources(),
      //     Profile(),
      //   ],
      // ),
      body:_screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: index,
        // onTap: (int newindex) {
        //   setState(() {
        //     index = newindex;
        //   });
        // },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(191, 186, 255, 100),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Experts',
            backgroundColor: Color.fromRGBO(191, 186, 255, 100),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Resources',
            backgroundColor: Color.fromRGBO(191, 186, 255, 100),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color.fromRGBO(191, 186, 255, 100),
          ),
        ],

        onTap: (int newindex) {
          setState(() {
            _index = newindex;
          });
        },
        currentIndex: _index,
        selectedItemColor: Colors.purple,
      ),
    );
  }
}
