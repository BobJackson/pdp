import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '测试结果页面',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('测试结果页面'),
        ),
        body: const Text('will show result...'),
      ),
    );
  }
}
