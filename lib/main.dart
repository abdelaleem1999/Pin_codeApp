import 'package:flutter/material.dart';
import 'screens/forget/view.dart';

void main() {
  runApp(Screen7());
}

class Screen7 extends StatefulWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  _Screen7State createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
          color: Colors.white,
            elevation: 0.0,
            centerTitle: true
          ),
          scaffoldBackgroundColor: Colors.white),
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
