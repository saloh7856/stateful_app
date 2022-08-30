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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  int count = 10;

  void func() {
    count += 5;
    print('Button pressed: $count');
  }

  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 290, horizontal: 150),
        child: Column(
          children: [
            Text('Count:$count'),
            TextButton(
              onPressed: func,
              child: Text('BUTTON'),
            ),
          ],
        ),
      ),
    ));
  }
}
