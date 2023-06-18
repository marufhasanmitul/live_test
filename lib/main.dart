import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(primarySwatch: Colors.cyan),
      color: Colors.green,
      debugShowCheckedModeBanner: false,

    );
  }
}


