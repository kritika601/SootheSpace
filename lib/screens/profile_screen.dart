import 'package:flutter/material.dart';
import 'package:soothe_space/screens/main_home_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        padding: const EdgeInsets.only(top:15.0),
        child: Stack(
        children: <Widget>[
        Image.asset('assets/images/img30.png'),




    ]
    ),
    ),
    ]
    ),
        ),
        ]
    ),
    ),
    );
  }
}
