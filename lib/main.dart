import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen.dart';

import 'screens/register.dart';

void main(){
  runApp( const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}