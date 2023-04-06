import 'package:flutter/material.dart';
import 'package:soothe_space/screens/main_home_screen.dart';
import 'package:soothe_space/screens/recommended_vr_environments.dart';

class vr1 extends StatefulWidget {
  const vr1({Key? key}) : super(key: key);

  @override
  State<vr1> createState() => _vr1State();
}

class _vr1State extends State<vr1> {
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

          child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Image(
                            image: AssetImage('assets/images/img10.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Stack(
                            children: <Widget>[
                              Image.asset('assets/images/img11.png'),
                              Positioned(
                                top:80,
                                right:12,
                                child: IconButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=> vrenvironments(),)
                                      );
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                      color: const Color.fromRGBO(191, 186, 255, 10),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                  ),
                ),
              ]
          )
      ),

    );
  }
}