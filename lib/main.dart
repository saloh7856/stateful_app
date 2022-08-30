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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 10;

  void func() {
    setState(() {
      count += 5;
    });

    print('Button pressed: $count');
  }

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
