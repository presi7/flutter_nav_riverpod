import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:navigation_riverpod/home.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  runApp(const ProviderScope(
  child: MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: Home(),
    );
  }
}

