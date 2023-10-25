import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen2/screen2.dart';
import '../screen3/screen3.dart';
import '../screen4/screen4.dart';

class layout extends StatefulWidget {
  static const String routName = "layout";

  layout({super.key});

  @override
  State<layout> createState() => _layout();
}

class _layout extends State<layout> {
  int selectedIndex = 0;
  List<Widget> screens = [
    Tab1(),
    Tab2(),
    Tab3(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Image.asset("assets/image/logo.png"),
        ),
        title: const Text(
          "Moody",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: ImageIcon(
              AssetImage(
                "assets/image/bell-02.png",
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.today_rounded), label: "Today"),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_sharp), label: "Insights"),
        ],
      ),
      body: screens[selectedIndex],
    );
  }
}
