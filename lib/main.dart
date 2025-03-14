import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("lab_5"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                "https://avatars.mds.yandex.net/get-mpic/11401947/2a0000018c290d016b0a965f9320efce73e5/orig",
                width: 300,
                height: 300,
              ),
              Image.asset(
                "assets/images/6.ijpeg.jpg",
                width: 300,
                height: 300,
              ),
              buildStack()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/6.ijpeg.jpg",
          width: 300,
          height: 300,
        ),
        Text(
          "Welcome to Flutter",
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }

  Widget buildButtond(){
    return Column(
      children: [
        ElevatedButton(onPressed: null, child: Text("ElevatedButton"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red

        ),)
      ]
    )
  }
}
