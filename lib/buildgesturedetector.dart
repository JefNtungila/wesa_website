import 'package:flutter/material.dart';
import 'md_renderer.dart';

// Class that manages hovering and gestures
class BuildGestureDetector extends StatefulWidget {
  final String markdownFileName;
  final String markdownTitle;
  final Function(bool)? onHover; // Callback for hover state
  final bool isHovered; // Hover state for this item
  final Color hoverColor;

  BuildGestureDetector({
    Key? key,
    required this.markdownFileName,
    required this.markdownTitle,
    this.onHover,
    required this.isHovered,
    this.hoverColor = const Color.fromRGBO(32, 150, 243, 1.0),
  }) : super(key: key);

  @override
  State<BuildGestureDetector> createState() => _BuildGestureDetectorState();
}

class _BuildGestureDetectorState extends State<BuildGestureDetector> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        if (widget.onHover != null) {
          widget.onHover!(true);
        }
      },
      onExit: (event) {
        if (widget.onHover != null) {
          widget.onHover!(false);
        }
      },
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) =>
                  MarkdownReader(markdownFileName: widget.markdownFileName),
            ),
          );
        },
        child: Text(
          widget.markdownTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: widget.isHovered ? widget.hoverColor : Colors.black,
          ),
        ),
      ),
    );
  }
}

// Class that defines the list of markdown items to control
class MarkdownItem {
  final String title;
  final String fileName;

  MarkdownItem({required this.title, required this.fileName});
}

// Class that manages the state of hovering
class HoverManager extends StatefulWidget {
  final List<MarkdownItem> items;

  HoverManager({required this.items});

  @override
  State<HoverManager> createState() => _HoverManagerState();
}

class _HoverManagerState extends State<HoverManager> {
  String? hoveredItem; // Track which item is currently hovered

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        final item = widget.items[index];
        return BuildGestureDetector(
          key: ValueKey(item.title), // Unique key for efficient rebuilds
          markdownTitle: item.title,
          markdownFileName: item.fileName,
          isHovered: hoveredItem != null && hoveredItem == item.title,
          onHover: (isHovered) {
            setState(() {
              hoveredItem = isHovered ? item.title : null;
            });
          },
        );
      },
    );
  }
}
