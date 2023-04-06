import 'package:flutter/material.dart';
import 'package:soothe_space/screens/quiz_screen2.dart';
import 'package:soothe_space/screens/recommended_vr_environments.dart';

class quiz3 extends StatefulWidget {
  const quiz3({Key? key}) : super(key: key);

  @override
  State<quiz3> createState() => _quiz3State();
}

class _quiz3State extends State<quiz3> {
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
                MaterialPageRoute(builder: (context)=> quiz2(),)
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
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image(image: AssetImage('assets/images/img5.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> vrenvironments(),)
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(191, 186, 255, 100),
                    minimumSize: Size(150,40),
                ),

                child: Text(
                  'Try VR Environments',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 17,
                  ),

                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
