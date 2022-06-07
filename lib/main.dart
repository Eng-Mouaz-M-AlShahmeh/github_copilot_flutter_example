/* Developed by Eng Mouaz M AlShahmeh */
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  // define array of 10 items
  static const List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  // print list of items
  static void printItems() {
    for (final item in items) {
      print(item);
    }
  }

  // fibonacci sequence function
  static int fibonacci(int n) {
    if (n == 0) {
      return 0;
    } else if (n == 1) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }

  // bubble sort function
  static void bubbleSort(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      for (int j = 0; j < list.length - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          final temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
  }

  // random string generator
  static String randomString(int length) {
    final random = Random();
    const alphabet = 'abcdefghijklmnopqrstuvwxyz';
    final result = StringBuffer();
    for (int i = 0; i < length; i++) {
      result.write(alphabet[random.nextInt(alphabet.length)]);
    }
    return result.toString();
  }


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      // body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // row of buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const ElevatedButton(
                  onPressed: MyHomePage.printItems,
                  child: Text('Print items'),
                ),
                ElevatedButton(
                  child: const Text('Fibonacci'),
                  onPressed: () {
                    print(MyHomePage.fibonacci(10));
                  },
                ),
                ElevatedButton(
                  child: const Text('Bubble sort'),
                  onPressed: () {
                    final list = [1, 0, 3, 5, 5, 6, 88, 55, 9, 10];
                    MyHomePage.bubbleSort(list);
                    print(list);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
