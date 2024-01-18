import 'package:flutter/material.dart';

class PageVie extends StatefulWidget {
  const PageVie({super.key});

  @override
  State<PageVie> createState() => _PageVieState();
}

class _PageVieState extends State<PageVie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View"),
      ),
      body:
      PageView(

          children:[
            Container(
              color: Colors.red,
              child: const Center(child: Text("Page 1"),),

            ),
            Container(
              color: Colors.yellow,
              child: const Center(child: Text("Page 2"),),
            ),
            Container(
              color: Colors.purple,
              child: const Center(child: Text("Page 3"),),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Page 4"),),
            )

          ]

      ),
    );
  }
}


