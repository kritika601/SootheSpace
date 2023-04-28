import 'package:flutter/material.dart';
import 'package:soothe_space/screens/main_home_screen.dart';

class Experts extends StatefulWidget {
  const Experts({Key? key}) : super(key: key);

  @override
  State<Experts> createState() => _ExpertsState();
}

class _ExpertsState extends State<Experts> {
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
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
            children: <Widget>[
              Center(
                  child: Stack(
                      children: <Widget>[
                        Image.asset('assets/images/img12.png'),
                        Positioned(
                            top: 45,
                            left: 5,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img13.png'),
                              iconSize: 330,
                            )
                        ),

                        Positioned(
                            top: 155,
                            left: 5,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img14.png'),
                              iconSize: 330,
                            )
                        )
                      ]
                  )
              ),
            ]
        ),
      ),

    );
  }
}
