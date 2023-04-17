import 'package:alibali/Data/SharedPreferences.dart';
import 'package:flutter/material.dart';
import 'Page1/Page1.dart';    // appel de la page1


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initshare();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo', 
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page1()
    );
  }
}