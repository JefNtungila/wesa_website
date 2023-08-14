import 'package:flutter/material.dart';
import 'md_renderer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(250),
            child: AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: 15, left: 45, right: 45, bottom: 75),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/mamie_logo.png'),
                            fit: BoxFit.fill)),
                  ),
                ),
              ),
              bottom: TabBar(
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
          body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                Text(
                  'Recent Posts',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap:() {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>
                        MarkdownReader(markdownFileName:
                        '2021-08-04-comparison-of-time-series-methodologies.md'),),
                  );
                  },
                  child: Text(
                    "Comparison of timeseries methodology",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                  ),
                ),
                Divider(
                  thickness: 3,
                  indent: 0,
                ),
              ],
            ),
          )),
    );
  }
}
