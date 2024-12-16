import 'package:flutter/material.dart';
import 'portfolio.dart';
import 'cheat_sheet.dart';
import 'musings.dart';
import 'cv.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(250),
            child: AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 45, right: 45, bottom: 75),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/jef_ntungila.png'),
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              bottom: const TabBar(
                isScrollable: true,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                      icon: Icon(
                        Icons.folder,
                        color: Colors.black,
                      ),
                      text: 'Data Science Portfolio'),
                  Tab(
                    icon: Icon(
                      Icons.list,
                      color: Colors.black,
                    ),
                    text: 'Data Science Cheat Sheet',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.lightbulb,
                      color: Colors.black,
                    ),
                    text: 'Data Science Musings',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.description,
                      color: Colors.black,
                    ),
                    text: 'CV',
                  ),
                ],
              ),
            ),
          ),
          body:const TabBarView(
            children: [
              Portfolio(),
              CheatSheet(),
              Musings(),
              CV(),
            ],
          )),
    );
  }
}