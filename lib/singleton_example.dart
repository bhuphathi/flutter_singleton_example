import 'package:flutter/material.dart';

class SingletonExample {
  //instance variable
  static SingletonExample? _instance;

  //private constructor
  SingletonExample._() {
    //optional constructor body
    debugPrint("_private constructor ran for first time...");
  }

  // way 1
  static SingletonExample get instance {
    debugPrint("instance static getter method called...");
    _instance ??= SingletonExample._();
    return _instance!;
  }

  // way 2
  static SingletonExample getInstance() {
    debugPrint("getInstance static method called...");
    _instance ??= SingletonExample._();
    return _instance!;
  }

  // way 3
  factory SingletonExample() {
    debugPrint("factory constructor called...");
    _instance ??= SingletonExample._();
    return _instance!;
  }
}
