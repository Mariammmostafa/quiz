import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  static const String routeName = "tab3";

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/image/logo0.png"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      icon: new Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 10, bottom: 5, top: 5, right: 10),
                      hintText: "Articles,Video,Audio and more,..."),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.black,
                indicatorColor: Colors.grey,
                tabs: [
                  Tab(text: "Discover"),
                  Tab(text: "News"),
                  Tab(text: "Most Viewed"),
                  Tab(text: "Saved"),
                ],
                indicator: ShapeDecoration(
                  color: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/image/Frame 3466531.png",
                          height: 110,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/image/Frame 3466537.png",
                          height: 230,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Text(
                          "Cycle Phases and Period",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        Text(
                          "see all",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.deepPurple,
                          size: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
