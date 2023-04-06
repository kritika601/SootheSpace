import 'package:flutter/material.dart';
import 'package:soothe_space/screens/quiz_screen3.dart';
import 'package:soothe_space/screens/quiz_screen1.dart';

class quiz2 extends StatefulWidget {
  const quiz2({Key? key}) : super(key: key);

  @override
  State<quiz2> createState() => _quiz2State();
}

class _quiz2State extends State<quiz2> {
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
                                top:70,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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
                                top:125,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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
                                top:180,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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
                                top:235,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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
                                top:95,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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
                                top:150,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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
                                top:205,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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
                                top:260,
                                right:95,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromRGBO(191,186,255,100),
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