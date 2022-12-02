import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:push_messaging_flutter/main_screen/ui/main_screen_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push messaging demo app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Push messaging demo app'),
    );
  }
}