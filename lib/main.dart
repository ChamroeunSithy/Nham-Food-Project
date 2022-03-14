import 'package:flutter/material.dart';
import 'package:flutter_assignment_3/page/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nham Food',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MainScreen(),
    );
  }
}
