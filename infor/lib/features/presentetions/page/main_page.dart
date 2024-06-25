import 'package:flutter/material.dart';
import 'package:infor/features/data/data.dart';
import 'package:infor/features/presentetions/const/style_of_app.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    information = Information();
  }

  Information? information;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "http package",
          style: AppStyle.titleStyle,
        ),
      ),
      body: FutureBuilder(
        future: information?.fetchData(),
        builder: (context, snapShot) {
          if (snapShot.hasError) {
            return Center(
              child: Text(snapShot.hasError.toString()),
            );
          } else if (snapShot.hasData) {
           return  Column(
              children: [
                Text(snapShot.data!.main),
                Text(snapShot.data!.id.toString()),
                Text(snapShot.data!.description)
              ],
            );
          } else {
             return 
             const Center(
              child:  CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
