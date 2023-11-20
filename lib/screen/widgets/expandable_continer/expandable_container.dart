import 'package:flutter/material.dart';

class ExpandableCardContainer extends StatefulWidget {
  bool isExpanded = false;
  final Widget? collapsedChild;
  final Widget? expandedChild;

  ExpandableCardContainer(
      {Key? key,
      required this.isExpanded,
      this.collapsedChild,
      this.expandedChild})
      : super(key: key);

  @override
  _ExpandableCardContainerState createState() =>
      _ExpandableCardContainerState();
}

class _ExpandableCardContainerState extends State<ExpandableCardContainer> {
  @override
  Widget build(BuildContext context) {
    return new AnimatedContainer(
      duration: new Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: widget.isExpanded! ? widget.expandedChild : widget.collapsedChild,
    );
  }
}
