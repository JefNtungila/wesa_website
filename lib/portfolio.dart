import 'package:flutter/material.dart';
import 'buildgesturedetector.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  String? hoveredItem; // Track the currently hovered item

  final items = [
    {
      'fileName':
      '2021-08-25-sentiment-analysis-of-social-media-usernames-and-titles-on-youtube-and-twitch.md',
      'title':
      'Sentiment Analysis of Social Media Usernames and Titles on YouTube and Twitch',
    },
    {
      'fileName': '2021-08-04-comparison-of-time-series-methodologies.md',
      'title': 'Comparison of Timeseries Methodology',
    },
    {
      'fileName': '2021-08-03-HR-Analytics-Client-Case-Study.md',
      'title': 'HR-Analytics, A Data Science Consulting Client Case Study',
    },
    {
      'fileName':
      '2021-08-02-churn-analysis-of-telco-data-and-its-business-value.md',
      'title': 'Churn Analysis of Telco Data and its Business Value',
    },
    {
      'fileName':
      '2021-08-01-ethical-ai-possible-application-of-fair-adversarial-networks.md',
      'title': 'Ethical AI - Reflecting on Fair Adversarial Networks',
    },
    {
      'fileName': '2021-05-01-sentiment-analysis-of-bbc-survey-data.md',
      'title':
      'Sentiment Analysis of Eastenders and The Apprentice Pulse Survey Data',
    },
    {
      'fileName':
      '2021-05-01-hand-gesture-controlled-computer-automated-design.md',
      'title':
      'Hand Gesture Controlled Computer Automated Design using Computer Vision',
    },
    {
      'fileName':
      '2020-08-01-the-application-of-facial-recognition-technology-by-law-enforcement.md',
      'title':
      'The Application of Facial Recognition Technology by Law Enforcement',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'Data Science Portfolio',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 30),
            ...items.map((item) {
              return Column(
                children: [
                  BuildGestureDetector(
                    markdownFileName: item['fileName']!,
                    markdownTitle: item['title']!,
                    isHovered: hoveredItem == item['fileName'], // Dynamically update hover state
                    onHover: (isHovered) {
                      setState(() {
                        if (isHovered) {
                          hoveredItem = item['fileName']; // Set hovered item
                        } else if (hoveredItem == item['fileName']) {
                          hoveredItem = null; // Clear hover state if exiting the same item
                        }
                      });
                    },
                  ),
                  SizedBox(height: 15),
                ],
              );
            }).toList(),
            SizedBox(height: 30),
            Divider(
              thickness: 3,
              indent: 0,
            ),
          ],
        ),
      ),
    );
  }
}
