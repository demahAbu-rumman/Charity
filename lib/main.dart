import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:jufinalproj/screens/signup_page.dart';

import 'firebase_options.dart';
import 'screens/login_page.dart';



void main() async {

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const JuFinalApp());
}



class JuFinalApp extends StatelessWidget {
  const JuFinalApp({super.key});

  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        "LoginPage":(context)=>LoginPage(),
        "SignupPage": (context)=> SignupPage(),
      },
    );
  }
}
