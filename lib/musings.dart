import 'package:flutter/material.dart';
import 'buildgesturedetector.dart';

class Musings extends StatelessWidget {
  const Musings({
    Key? key,
  }) : super(key: key);

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
              'Data Science Musings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 30),
            BuildGestureDetector(
                isHovered: false,
                markdownFileName:
                'intern_to_senior.md',
                markdownTitle:
                'From Data Science Intern to Hopefully Senior Data Scientist'),
            SizedBox(height: 30,),
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

