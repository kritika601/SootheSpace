import 'package:flutter/material.dart';
import 'package:soothe_space/screens/main_home_screen.dart';
import 'package:soothe_space/screens/resources_screen.dart';

class podcasts extends StatefulWidget {
  const podcasts({Key? key}) : super(key: key);

  @override
  State<podcasts> createState() => _podcastsState();
}

class _podcastsState extends State<podcasts> {
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
                                  primary: Colors.purple,
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
                            top: 120,
                            left: 10,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Resources(),)
                                );  //jugaad only
                              },
                              icon: Image.asset('assets/images/img25.png'),
                              iconSize: 320,
                            )
                        ),


                        Positioned(
                            top: 220,
                            left: 10,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img26.png'),
                              iconSize: 320,
                            )
                        ),

                        Positioned(
                            top: 320,
                            left: 10,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img27.png'),
                              iconSize: 320,
                            )
                        ),

                        Positioned(
                            top: 420,
                            left: 10,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img28.png'),
                              iconSize: 320,
                            )
                        ),

                        Positioned(
                            top: 520,
                            left: 10,
                            child: IconButton(
                              onPressed: () { },
                              icon: Image.asset('assets/images/img29.png'),
                              iconSize: 320,
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
