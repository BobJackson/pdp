import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  final int page;

  const Questions({Key? key, required this.page}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  static const questions = [
    '1.你做事是一个值得信赖的人吗？',
    '2.你个性温和吗？',
    '3.你有活力吗？',
    '4.你善解人意吗？',
    '5.你独立吗？',
    '6.你受人爱戴吗？',
    '7.做事认真且正直吗？',
    '8.你富有同情心吗？',
    '9.你有说服力吗？',
    '10.你大胆吗？',
    '11.你精确吗？',
    '12.你适应能力强吗？',
    '13.你组织能力好吗？',
    '14.你是否积极主动？',
    '15.你害羞吗？',
    '16.你强势吗？',
    '17.你镇定吗？',
    '18.你勇于学习吗？',
    '19.你反应快吗？',
    '20.你外向吗？',
    '21.你注意细节吗？',
    '22.你爱说话吗？',
    '23.你的协调能力好吗？',
    '24.你勤劳吗？',
    '25.你慷慨吗？',
    '26.你小心翼翼吗？',
    '27.你令人愉快吗？',
    '28.你传统吗？',
    '29.你亲切吗？',
    '30.你工作足够有效率吗？',
  ];


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
