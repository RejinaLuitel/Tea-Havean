import 'package:flutter/material.dart';
import 'package:teaheaven/assamtea.dart';
import 'package:teaheaven/blacktea.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tea havan',
      home: BlackTea(),
    );
  }
}