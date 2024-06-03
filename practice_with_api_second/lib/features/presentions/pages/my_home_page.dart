import 'package:flutter/material.dart';
import 'package:practice_with_api_second/features/data/repositories/services/data.dart';
import 'package:practice_with_api_second/features/presentions/constans/style_app.dart';
// import 'package:practice_with_api_second/features/presentions/widgets/whole_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    infor = Infor();
  }

  Infor? infor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Api",
          style: AppTitle.textStyle,
        ),
      ),
      body: FutureBuilder(
        future: infor?.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return SizedBox(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.orangeAccent,
                child: Center(
                  child: Text(
                    snapshot.hasError.toString(),
                  ),
                ),
              ),
            );
          } else if (snapshot.hasData) {
            return Column(
              children: [
                Text(
                  snapshot.data!.name,
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                )
                // wholeTexts(
                //   text: snapshot.data!.name,
                // ),
                // wholeTexts(
                //   text: snapshot.data!.timezone.toString(),
                // ),
                // wholeTexts(
                //   text: snapshot.data!.country.toString(),
                // ),
                // wholeTexts(
                //   text: snapshot.data!.speed.toString(),
                // ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
