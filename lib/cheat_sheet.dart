import 'package:flutter/material.dart';
import 'buildgesturedetector.dart';

class CheatSheet extends StatefulWidget {
  const CheatSheet({Key? key}) : super(key: key);

  @override
  _CheatSheetState createState() => _CheatSheetState();
}

class _CheatSheetState extends State<CheatSheet> {
  String? hoveredItem; // Tracks the currently hovered item

  final items = [
    {
      'fileName': 'statistics_cheat_sheet.md',
      'title': 'Statistics Cheat Sheet',
    },
    {
      'fileName': 'data_science_concept_cheat_sheet.md',
      'title': 'Data Science Concept Cheat Sheet',
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
              'Data Science Cheat Sheet',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 30),
            ...items.map((item) {
              return Column(
                children: [
                  BuildGestureDetector(
                    markdownFileName: item['fileName']!,
                    markdownTitle: item['title']!,
                    isHovered: hoveredItem == item['fileName'], // Update hover state
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
