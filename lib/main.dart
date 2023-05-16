import 'package:flutter/material.dart';
import 'package:soothe_space/other/navigation_bar.dart';
import 'package:soothe_space/screens/quiz_screen1.dart';
//import 'package:soothe_space/screens/resources_screen.dart';
//import 'package:soothe_space/screens/resources_podcasts.dart';
import 'package:soothe_space/screens/recommended_vr_environments.dart';
import 'screens/main_home_screen.dart';
import 'screens/quiz_screen1.dart';
import 'screens/quiz_screen2.dart';
import 'screens/quiz_screen3.dart';
import 'screens/vr_screen1.dart';
import 'screens/recommended_vr_environments.dart';
import 'screens/expert_screen.dart';
import 'screens/resources_screen.dart';
import 'screens/resources_podcasts.dart';



void main() {
  runApp(MaterialApp(
    home: bottom_navigation(),
  ));
}
