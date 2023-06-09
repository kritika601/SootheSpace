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
                        ),

                        Positioned(
                            top: 265,
                            left: 5,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img15.png'),
                              iconSize: 330,
                            )
                        ),

                        Positioned(
                            top: 375,
                            left: 5,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img16.png'),
                              iconSize: 330,
                            )
                        ),

                        Positioned(
                            top: 485,
                            left: 5,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img17.png'),
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
