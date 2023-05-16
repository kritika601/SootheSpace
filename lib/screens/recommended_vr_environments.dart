import 'package:flutter/material.dart';
import 'package:soothe_space/screens/ar_screen.dart';
import 'package:soothe_space/screens/main_home_screen.dart';
import 'package:soothe_space/screens/ar_screen_new.dart';
import 'package:soothe_space/screens/quiz_screen1.dart';
import 'package:soothe_space/screens/quiz_screen2.dart';
import 'package:soothe_space/screens/quiz_screen3.dart';
import 'package:soothe_space/screens/ar_screen.dart';

class vrenvironments extends StatefulWidget {
  const vrenvironments({Key? key}) : super(key: key);

  @override
  State<vrenvironments> createState() => _vrenvironmentsState();
}

class _vrenvironmentsState extends State<vrenvironments> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(191, 186, 255, 100),
        title: Text(
          'SootheSpace',
          style: TextStyle(
            fontFamily: 'DancingScript',
            fontSize: 35,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> Home(),)
              );
            },
            icon: Icon(
              Icons.arrow_back,
              size:35.0,
            )
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
            child: Stack(
            children: <Widget>[
              Image.asset('assets/images/img9.png'),
              Positioned(
                  top: 130,
                  left: 1,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=> ARScreen(),)
                      );
                    },
                    icon: Image.asset('assets/images/img7.png'),
                    iconSize: 330,
                  )
              ),

              Positioned(
                  top: 270,
                  left: 1,
                  child: IconButton(
                    onPressed: () { },
                    icon: Image.asset('assets/images/img8.png'),
                    iconSize: 330,
                  )
              )
            ]
          )
    ),
    ]
        ),
      ),

    //     bottomNavigationBar: BottomNavigationBar(
    //     items: const <BottomNavigationBarItem>[
    //         BottomNavigationBarItem(
    //         icon: Icon(Icons.home),
    //         label: 'Home',
    //         backgroundColor: Color.fromRGBO(191, 186, 255, 100),
    //         ),
    //         BottomNavigationBarItem(
    //         icon: Icon(Icons.people_alt_sharp),
    //         label: 'Experts',
    //         backgroundColor: Color.fromRGBO(191, 186, 255, 100),
    //         ),
    //         BottomNavigationBarItem(
    //         icon: Icon(Icons.bookmark),
    //         label: 'Resources',
    //         backgroundColor: Color.fromRGBO(191, 186, 255, 100),
    //         ),
    //         BottomNavigationBarItem(
    //         icon: Icon(Icons.person),
    //         label: 'Profile',
    //         backgroundColor: Color.fromRGBO(191, 186, 255, 100),
    //         ),
    //         ],
    //         currentIndex: _selectedIndex,
    //         selectedItemColor: Colors.purple[500],
    //         onTap: _onItemTapped,
    // ),
    );
  }
}
