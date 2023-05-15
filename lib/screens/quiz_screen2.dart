import 'package:flutter/material.dart';
import 'package:soothe_space/screens/quiz_screen3.dart';
import 'package:soothe_space/screens/quiz_screen1.dart';

class quiz2 extends StatefulWidget {
  const quiz2({Key? key}) : super(key: key);

  @override
  State<quiz2> createState() => _quiz2State();
}

class _quiz2State extends State<quiz2> {
  bool _hasBeenPressed1=false;
  bool _hasBeenPressed2=false;
  bool _hasBeenPressed3=false;
  bool _hasBeenPressed4=false;
  bool _hasBeenPressed5=false;
  bool _hasBeenPressed6=false;
  bool _hasBeenPressed7=false;
  bool _hasBeenPressed8=false;
  bool _hasBeenPressed9=false;
  bool _hasBeenPressed10=false;

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
                MaterialPageRoute(builder: (context)=> quiz1(),)
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

        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Stack(
                            children: <Widget>[
                              Image.asset('assets/images/img4.png'),
                              Positioned(
                                top:60,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed1 = !_hasBeenPressed1;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed1 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Rarely',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:110,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed2 = !_hasBeenPressed2;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed2 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Sometimes',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:160,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed3 = !_hasBeenPressed3;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed3 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Often',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:210,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed4 = !_hasBeenPressed4;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed4 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Almost Always',
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
                    Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Stack(
                            children:<Widget>[
                              Image.asset('assets/images/img6.png'),
                              Positioned(
                                top:85,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed5 = !_hasBeenPressed5;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed5 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Not at all',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,

                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:135,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed6 = !_hasBeenPressed6;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed6 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Some Days',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:185,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed7 = !_hasBeenPressed7;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed7 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Almost Everyday',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top:235,
                                right:75,
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _hasBeenPressed8 = !_hasBeenPressed8;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: _hasBeenPressed8 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                                    minimumSize: Size(200,40),),
                                  child: Text(
                                    'Everyday',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ]
                        )

                    )
                  ]),
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> quiz3(),)
                  );
                },
              style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(191,186,255,100),
                    minimumSize: Size(0,0),
                  ),
                child: Text(
                  'Finish',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
                ),
            )
          ],

        ),
      ),

    );

  }
}