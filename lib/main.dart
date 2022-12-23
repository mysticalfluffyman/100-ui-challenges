import 'package:flutter/material.dart';
import 'package:uiChallenges/screens/screen_3.dart';

import 'models/option.dart';
import 'screens/screen_0.dart';
import 'screens/screen_1.dart';
import 'screens/screen_2.dart';
import 'widgets/separated_list_tile.dart';

void main() {
  runApp(const MyApp());
}

///
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(final BuildContext context) => MaterialApp(
        title: '100_UI_Challenges',
        theme: ThemeData(
            primaryColor: const Color(0XFF7625CF),
            primarySwatch: Colors.deepPurple),
        home: const Home(),
      );
}

///
class Home extends StatelessWidget {
  ///
  const Home({super.key});
  @override
  Widget build(final BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('100-ui-challenges'),
        ),
        body: const SeparatedListTile(
          options: [
            Option(title: 'Screen Zero', child: Screen0()),
            Option(title: 'Screen One', child: Screen1()),
            Option(title: 'Screen Two', child: Screen2()),
            Option(title: 'Screen Three', child: Screen3()),
          ],
        ),
      );
}
