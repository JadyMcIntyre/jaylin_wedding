import 'package:flutter/material.dart';

class TimelineItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData iconData;

  const TimelineItem({super.key, required this.title, required this.subTitle, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListTile(leading: Icon(iconData), title: Text(title), subtitle: Text(subTitle)),
    );
  }
}
