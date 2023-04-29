import 'package:flutter/material.dart';
import 'package:soothe_space/screens/main_home_screen.dart';

class Resources extends StatefulWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
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
                        Image.asset('assets/images/img18.png'),

                        //books button
                        Positioned(
                            top:187,
                            left: 30,
                            child: ElevatedButton(
                                onPressed: (){
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(191, 186, 255, 100),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  minimumSize: Size(50,30),
                                ),
                                child: Text(
                                  "Books",
                                  style: TextStyle(
                                      fontFamily: 'Poppins'),
                                )
                            )
                        ),

                        // Podcasts button
                        Positioned(
                            top:187,
                            left: 125,
                            child: ElevatedButton(
                                onPressed: (){
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(191, 186, 255, 100),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  minimumSize: Size(50,30),
                                ),
                                child: Text(
                                  "Podcasts",
                                  style: TextStyle(
                                      fontFamily: 'Poppins'),
                                )
                            )
                        ),

                        //Videos button
                        Positioned(
                            top:187,
                            left: 245,
                            child: ElevatedButton(
                                onPressed: (){
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(191, 186, 255, 100),
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  minimumSize: Size(50,30),
                                ),
                                child: Text(
                                  "Videos",
                                  style: TextStyle(
                                      fontFamily: 'Poppins'),
                                )
                            )
                        ),


                        Positioned(
                            top: 130,
                            left: 12,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img19.png'),
                              iconSize: 320,
                            )
                        ),


                        Positioned(
                            top: 260,
                            left: 12,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img20.png'),
                              iconSize: 320,
                            )
                        ),



                        Positioned(
                            top: 390,
                            left: 12,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img22.png'),
                              iconSize: 320,
                            )
                        ),

                        Positioned(
                            top: 520,
                            left: 12,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img23.png'),
                              iconSize: 320,
                            )
                        ),

                        Positioned(
                            top: 680,
                            left: 5,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img24.png'),
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
