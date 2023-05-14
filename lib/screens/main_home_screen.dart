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
import 'package:soothe_space/other/navigation_bar.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        centerTitle: true,
      ),

      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/img2.png'),
                  //SMILEY BUTTON
                  Positioned(
                    top:150,
                    left:25,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            _hasBeenPressed1 = !_hasBeenPressed1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: _hasBeenPressed1 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                        ),

                        child: Image(
                          image: AssetImage('assets/buttons/Smiley.png'),
                        )
                    )
                  ),


                  // SMILEY MEH BUTTON
                  Positioned(
                      top:150,
                      left: 110,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed2 = !_hasBeenPressed2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed2 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                          ),
                        child:Image(
                          image: AssetImage('assets/buttons/SmileyMeh (1).png' ),
                        )
                      )
                  ),


                  //SMILEY NERVOUS
                  Positioned(
                      top:150,
                      left: 190,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed3 = !_hasBeenPressed3;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed3 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                          ),
                        child: Image(
                          image: AssetImage('assets/buttons/SmileyNervous.png'),
                        )
                      )
                  ),
                  Positioned(
                      top:150,
                      left: 270,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed4 = !_hasBeenPressed4;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed4 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                          ),
                        child: Image(
                          image: AssetImage('assets/buttons/SmileySad.png'),
                        )
                      )
                  ),

                //ANXIETY BUTTON
                  Positioned(
                      top:230,
                      left: 25,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed5 = !_hasBeenPressed5;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed5 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                            elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              minimumSize: Size(50,30),
                          ),
                          child: Text(
                            "Anxiety",
                            style: TextStyle(
                                fontFamily: 'Poppins'),
                          )
                      )
                  ),

                  //Hope button
                  Positioned(
                      top:230,
                      left: 120,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed6 = !_hasBeenPressed6;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed6 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            minimumSize: Size(50,30),
                          ),
                          child: Text(
                            "Hope",
                            style: TextStyle(
                                fontFamily: 'Poppins'),
                          )
                      )
                  ),

                  //Optimistic
                  Positioned(
                      top:230,
                      left: 200,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed7 = !_hasBeenPressed7;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed7 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            minimumSize: Size(50,30),
                          ),
                          child: Text(
                            "Optimistic",
                            style: TextStyle(
                                fontFamily: 'Poppins'),
                          )
                      )
                  ),

                  //Stress
                  Positioned(
                      top:270,
                      left: 25,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed8 = !_hasBeenPressed8;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed8 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            minimumSize: Size(50,30),
                          ),
                          child: Text(
                            "Stress",
                            style: TextStyle(
                                fontFamily: 'Poppins'),
                          )
                      )
                  ),

                  //Agitated
                  Positioned(
                      top:270,
                      left: 110,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed9 = !_hasBeenPressed9;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed9 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            minimumSize: Size(50,30),
                          ),
                          child: Text(
                            "Agitated",
                            style: TextStyle(
                                fontFamily: 'Poppins'),
                          )
                      )
                  ),

                  //Dissatisfaction
                  Positioned(
                      top:270,
                      left: 215,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              _hasBeenPressed10 = !_hasBeenPressed10;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: _hasBeenPressed10 ? Colors.deepPurple : Color.fromRGBO(191, 186, 255, 100),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            minimumSize: Size(50,30),
                          ),
                          child: Text(
                            "Lonely",
                            style: TextStyle(
                                fontFamily: 'Poppins'),
                          )
                      )
                  )
                ]
              ),
            ),

          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Center(
              child: Stack(
                children: <Widget>[
                  Image.asset('assets/images/ChooseQuizImage.png'),
                  Positioned(
                      top: 100,
                      right: 15,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> quiz1(),)
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          size: 40,
                          color: Color.fromRGBO(191, 186, 255, 1),
                        ),
                      ))
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Stack(
                  children: <Widget>[
                    Image.asset('assets/images/ChooseVRImage.png'),
                    Positioned(
                        top: 100,
                        right: 15,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> vr1(),)
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                              size: 40,
                                color: Color.fromRGBO(191, 186, 255, 1),
                            ),
                        ))
                  ],
                )
            ),
          )
        ],

      ),
    );


  }
}
