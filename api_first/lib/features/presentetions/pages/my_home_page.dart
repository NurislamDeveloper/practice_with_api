import 'package:api_first/features/data/inf/infor.dart';
import 'package:flutter/material.dart';

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
        centerTitle: true,
        title: const Text(
          'PRactice Api',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(
            future: information?.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 05,
                    height: MediaQuery.of(context).size.height / 06,
                    child: Card(
                      color: Colors.blueAccent,
                      child: Text(snapshot.hasData.toString()),
                    ),
                  ),
                );
              } else if (snapshot.hasData) {
                return SizedBox(
                  width: 300,
                  height: 200,
                  child: Card(
                    child: Column(
                      children: [
                        Text(snapshot.data!.base),
                        Text(
                          snapshot.data!.humidity.toString(),
                        ),
                        Text(
                          snapshot.data!.all.toString(),
                        ),
                        Text(
                          snapshot.data!.country,
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
