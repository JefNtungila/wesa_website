import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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

  @override //ask chatgpt what second override does

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        //width: MediaQuery.of(context).size.width),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Markdown(data: _markdownContent,),
        ),
      ),
    );
  }
}

//void main() => runApp(MaterialApp(home: MarkdownReader()));



