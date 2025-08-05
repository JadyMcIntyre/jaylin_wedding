import 'package:flutter/material.dart';
import 'package:jaylin_wedding/core/drawer.dart';
import 'package:jaylin_wedding/features/schedule/widgets/timeline.dart';
import 'package:timelines_plus/timelines_plus.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule'),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.4),
        foregroundColor: Theme.of(context).colorScheme.surface,
      ),
      drawer: CustomDrawer(),
      body: TimelineWidget(),
    );
  }
}
