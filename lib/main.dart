// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<String> imagelist = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
    'assets/10.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overlapping Circle Avatar'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          for(int i=0; i<imagelist.length; i++)
            Container(
              // margin: EdgeInsets.symmetric(vertical: 0),
              child: Align(
                widthFactor: 0.45,
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imagelist[i]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            const CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Icon(Icons.add,color: Colors.white,),
            )
        ],),
      ),
    );
  }
}
