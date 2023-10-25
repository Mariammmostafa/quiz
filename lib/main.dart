import 'package:flutter/material.dart';
import 'package:quiz/home/homelayout.dart';
import 'package:quiz/screen2/screen2.dart';
import 'package:quiz/screen3/screen3.dart';
import 'package:quiz/screen4/screen4.dart';
import 'package:quiz/theme/application%20theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var screen = screen.of(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ApplicationTheme.lightTheme,
        initialRoute: layout.routName,
        routes: {
          layout.routName: (context) => layout(),
          Tab1.routName: (context) => Tab1(),
          Tab2.routeName: (context) => Tab2(),
          Tab3.routeName: (context) => Tab3(),
        });
  }
}
