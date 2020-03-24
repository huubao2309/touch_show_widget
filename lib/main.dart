import 'package:flutter/material.dart';

import 'lib_use.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Popover',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopoverDemo(),
    );
  }
}
