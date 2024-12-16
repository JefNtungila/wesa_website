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
                            image: AssetImage('assets/jef_ntungila.png'),
                            fit: BoxFit.contain)),
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
                  child: Flexible(child: Text('Data Science Portfolio')),),
                  Tab(
                    icon: Icon(
                      Icons.list,
                      color: Colors.black,
                    ),
                    child: Flexible(child: Text('Data Science Cheat Sheet')),),
                  Tab(
                    icon: Icon(
                      Icons.lightbulb,
                      color: Colors.black,
                    ),
                    child: Flexible(child: Text('Data Science Musings')),),
                  Tab(
                    icon: Icon(
                      Icons.description,
                      color: Colors.black,
                    ),
                    child: Flexible(child: Text('CV')),),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Text(
                    'Recent Posts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2021-08-25-sentiment-analysis-of-social-media-usernames-and-titles-on-youtube-and-twitch.md'),),
                      );
                    },
                    child: Text(
                      "Sentiment Analysis of Social Media Usernames and Titles on Youtube and Twitch",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
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
                      "Comparison of Timeseries Methodology",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2021-08-03-HR-Analytics-Client-Case-Study.md'),),
                      );
                    },
                    child: Text(
                      "HR-Analytics, A Data Science Consulting Client Case Study",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2021-08-02-churn-analysis-of-telco-data-and-its-business-value.md'),),
                      );
                    },
                    child: Text(
                      "Churn Analysis of Telco Data and its Business Value",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2021-08-01-predicting-new-covid-19-cases-using-mobility-and-weather-features.md'),),
                      );
                    },
                    child: Text(
                      "Predicting New COVID-19 Cases Using Mobility and Weather Features",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2021-08-01-ethical-ai-possible-application-of-fair-adversarial-networks.md'),),
                      );
                    },
                    child: Text(
                      "Ethical AI - Reflecting on Fair Adversarial Networks",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2021-05-01-sentiment-analysis-of-bbc-survey-data.md'),),
                      );
                    },
                    child: Text(
                      "Sentiment Analysis of Eastenders and The Apprentice Pulse Survey Data",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2021-05-01-hand-gesture-controlled-computer-automated-design.md'),),
                      );
                    },
                    child: Text(
                      "Hand Gesture Controlled Computer Automated Design using Computer Vision",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap:() {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>
                            MarkdownReader(markdownFileName:
                            '2020-08-01-the-application-of-facial-recognition-technology-by-law-enforcement.md'),),
                      );
                    },
                    child: Text(
                      "The Application of Facial Recognition Technology by Law Enforcement",
                      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 30),
                  Divider(
                    thickness: 3,
                    indent: 0,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
