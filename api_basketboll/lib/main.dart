import 'package:api_basketboll/features/presentions/screens/mybasketboll_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(

      ),
      home:  MybasketbollPage()
    );
  }
}

