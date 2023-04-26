import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:soothe_space/screens/main_home_screen.dart';
import 'package:soothe_space/screens/quiz_screen2.dart';
import 'package:soothe_space/screens/quiz_screen3.dart';


class quiz1 extends StatefulWidget {
  const quiz1({Key? key}) : super(key: key);

  @override
  State<quiz1> createState() => _quiz1State();
}

class _quiz1State extends State<quiz1> {
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  // TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Experts',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: Resources',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 3: Profile',
  //     style: optionStyle,
  //   ),
  // ];
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  //   if(index==0){
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context)=> Home()),
  //     );
  //   }
  //
  //   else if (index==1){
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context)=> quiz1()),
  //     );
  //   }
  //
  //   else if (index==2){
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context)=> quiz2()),
  //     );
  //   }
  //
  //   else if (index==3){
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context)=> quiz3()),
  //     );
  //   }
  //
  // }

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
          ),
        ),

        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Image(
                        image: AssetImage('assets/images/img1.png'),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Stack(
                            children: <Widget>[
                              Image.asset('assets/images/img3.png'),
                              Positioned(
                                top:185,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=> quiz2(),)
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
                                    minimumSize: Size(200,40),
                                  ),
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       backgroundColor: Color.fromRGBO(191, 186, 255, 100),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.people_alt_sharp),
      //       label: 'Experts',
      //       backgroundColor: Color.fromRGBO(191, 186, 255, 100),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark),
      //       label: 'Resources',
      //       backgroundColor: Color.fromRGBO(191, 186, 255, 100),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //       backgroundColor: Color.fromRGBO(191, 186, 255, 100),
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.purple[500],
      //   onTap: _onItemTapped,
      // ),
    );





  }
}
