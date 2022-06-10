import 'package:flutter/material.dart';
import 'package:pdp/questions.dart';

import 'pdp.dart';

void main() {
  runApp(MaterialApp(
    home: const Pdp(),
    routes: <String, WidgetBuilder> {
      '/page1': (BuildContext context) => Questions(page: 1),
      '/page2': (BuildContext context) => Questions(page: 2),
      '/page3': (BuildContext context) => Questions(page: 3),
      '/page4': (BuildContext context) => Questions(page: 4),
      '/page5': (BuildContext context) => Questions(page: 5),
    },
  ));
}
