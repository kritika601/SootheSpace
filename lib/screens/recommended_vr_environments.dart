import 'package:flutter/material.dart';
import 'package:soothe_space/screens/main_home_screen.dart';

class vrenvironments extends StatefulWidget {
  const vrenvironments({Key? key}) : super(key: key);

  @override
  State<vrenvironments> createState() => _vrenvironmentsState();
}

class _vrenvironmentsState extends State<vrenvironments> {
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
            )
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Center(
            child: Stack(
            children: <Widget>[
              Image.asset('assets/images/img9.png'),
              Positioned(
                  top: 150,
                  left: 15,
                  child: IconButton(
                    onPressed: () { },
                    icon: Image.asset('assets/images/img7.png'),
                    iconSize: 330,
                  )
              ),

              Positioned(
                  top: 300,
                  left: 15,
                  child: IconButton(
                    onPressed: () { },
                    icon: Image.asset('assets/images/img8.png'),
                    iconSize: 330,
                  )
              )
            ]
          )
    ),
    ]
        ),
      )
    );
  }
}
