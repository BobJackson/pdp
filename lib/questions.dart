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
    var beforePage = page - 1;
    var nextPage = page + 1;
    return MaterialApp(
      title: 'Page$page',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.navigate_before),
            tooltip: '上一页',
            onPressed: () {
              if (page == 1) {
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, '/page$beforePage');
              }
            },
          ),
          title: Text('题目[第$startIndex题～第$endIndex题 ]'),
          actions: <Widget>[
            IconButton(onPressed: () {
              if (page == 6) {
                Navigator.pushNamed(context, '/result');
              }else{
                Navigator.pushNamed(context, '/page$nextPage');
              }
            }, icon: const Icon(Icons.navigate_next))
          ],
        ),
        body: const Text('will show questions bellow...'),
      ),
    );
  }
}
