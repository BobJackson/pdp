import 'package:flutter/material.dart';
import 'package:pdp/questions.dart';

import 'pdp.dart';
import 'results.dart';

void main() {
  runApp(MaterialApp(
    home: const Pdp(),
    routes: <String, WidgetBuilder> {
      '/page1': (BuildContext context) => const Questions(page: 1),
      '/page2': (BuildContext context) => const Questions(page: 2),
      '/page3': (BuildContext context) => const Questions(page: 3),
      '/page4': (BuildContext context) => const Questions(page: 4),
      '/page5': (BuildContext context) => const Questions(page: 5),
      '/page6': (BuildContext context) => const Questions(page: 6),
      '/result': (BuildContext context) => const Results(),
    },
  ));
}
