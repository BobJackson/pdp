import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  final int page;

  const Questions({Key? key, required this.page}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  @override
  Widget build(BuildContext context) {
    var page = widget.page;
    var startIndex = 5 * (page - 1) + 1;
    var endIndex = 5 * (page);
    return MaterialApp(
      title: 'Page$page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('题目[第$startIndex题～第$endIndex题 ]'),
        ),
        body: const Text('will show questions bellow...'),
      ),
    );
  }
}
