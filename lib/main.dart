
import 'package:basic_ui/folder_baisc_ui/screen_third.dart';
import 'package:basic_ui/folder_baisc_ui/screen_two.dart';
import 'package:flutter/material.dart';

import 'folder_baisc_ui/screen_four.dart';
import 'folder_baisc_ui/screen_one.dart';
import 'folder_baisc_ui/text_validation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyTextValidation(),
    );
  }
}

