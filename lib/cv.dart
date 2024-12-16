import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CV extends StatelessWidget {
  const CV({
    Key? key,
  }) : super(key: key);

  final String _url = 'https://uk.linkedin.com/in/jefntungila';

  _launchURL() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }

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
              'Data Science CV',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: _launchURL,
              child: Text(
                'Jef Ntungila CV',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color.fromRGBO(32, 150, 243, 1.0),
                    decoration: TextDecoration.underline)
              ),
            ),
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

