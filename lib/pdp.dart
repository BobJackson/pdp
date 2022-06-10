import 'package:flutter/material.dart';

class Pdp extends StatelessWidget {
  const Pdp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        'PDP是行为风格测试的一项工具，英文全称Professional DynaMetric Program。'
        '这是一个在美国企业中普遍认可并用之于迅速区分不同人际风格的一套测试题。'
        '管理人员通过它可以来了解下属的工作性格，以扬长避短，普通职员通过它可以知己知彼完善自身。',
        softWrap: true,
        style: TextStyle(fontSize: 16),
      ),
    );

    Widget subTitleSection = const Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        '根据自己的判断，选择ABCDE其中的一项：',
        softWrap: true,
        style: TextStyle(fontSize: 16, color: Colors.deepOrange),
      ),
    );

    Widget answerATile = const ListTile(
      title: Text('A 非常同意'),
    );
    Widget answerBTile = const ListTile(
      title: Text('B 比较同意'),
    );
    Widget answerCTile = const ListTile(
      title: Text('C 差不多同意'),
    );
    Widget answerDTile = const ListTile(
      title: Text('D 有一点同意'),
    );
    Widget answerETile = const ListTile(
      title: Text('E 不同意'),
    );

    Widget beginToPlay = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/page1');
          }, child: const Text('开始答题')),
        ],
      ),
    );

    return MaterialApp(
      title: 'Professional DynaMetric Programs',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Professional DynaMetric Programs'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/pdp-overview.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            subTitleSection,
            answerATile,
            answerBTile,
            answerCTile,
            answerDTile,
            answerETile,
            beginToPlay,
          ],
        ),
      ),
    );
  }

}
