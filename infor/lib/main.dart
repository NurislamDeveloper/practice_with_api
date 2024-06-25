import 'package:flutter/material.dart';
import 'package:infor/features/presentetions/page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
        ),
         scaffoldBackgroundColor: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

