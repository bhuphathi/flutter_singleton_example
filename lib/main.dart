import 'package:flutter/material.dart';
import 'package:flutter_singleton_example/singleton_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("CALLING: factory constructor...");
    final singleton1 = SingletonExample();
    debugPrint("\n");
    debugPrint("CALLING: getInstance static method...");
    final singleton2 = SingletonExample.getInstance();
    debugPrint("\n");
    debugPrint("CALLING: instance static getter method...");
    final singleton3 = SingletonExample.instance;

    debugPrint(
        "HashCodes of all instances \n 1. ${singleton1.hashCode} \n 2. ${singleton2.hashCode} \n 3. ${singleton3.hashCode}");

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Singleton Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.green[200],
        body: const Center(
          child: Column(
            children: [
              Text('Singleton Demo Home Page'),
            ],
          ),
        ),
      ),
    );
  }
}
