import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MarkdownReader extends StatefulWidget {

  final String markdownFileName; //setting up md parameter

  const MarkdownReader({Key? key, required this.markdownFileName}) : super(key: key); //setting up md parameter

  @override
  State<MarkdownReader> createState() => _MarkdownReaderState();
}

class _MarkdownReaderState extends State<MarkdownReader> {

  String _markdownContent = '';

  @override

  void initState(){
    super.initState();
    _loadMarkdownFile();
  }

  Future<void> _loadMarkdownFile() async {
    try {
      String markdownText = await rootBundle.loadString(
          'assets/${widget.markdownFileName}');

      setState(() {
        _markdownContent = markdownText;
      }
      );
    }
    catch (e) {
      print('Error loading Markdown file: $e');
      Navigator.pop(context);
    }
  }

  void _onTapLink(String text, String? href, String title) async{
    if (await canLaunch(href!)){
      await launch(href);
    } else {
      print('Could not launch $href');
    }
  }

  @override //ask chatgpt what second override does

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        //width: MediaQuery.of(context).size.width),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Markdown(data: _markdownContent,
          onTapLink: _onTapLink),
        ),
      ),
    );
  }
}

//void main() => runApp(MaterialApp(home: MarkdownReader()));



