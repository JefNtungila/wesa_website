import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WillPopScope(
        // wilpopscope handles backbutton, but backbutton does not appear in browser with no history
        // https://github.com/flutter/flutter/issues/59185
          onWillPop: () async {
            if (Navigator.of(context).canPop()){
              return true;
            } else {
              return false;
            }
          },
          child: HomePage()),
    );
  }
}
