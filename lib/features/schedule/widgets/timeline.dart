import 'package:flutter/material.dart';
import 'package:jaylin_wedding/features/schedule/widgets/timeline_catalogue.dart';
import 'package:timelines_plus/timelines_plus.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      theme: TimelineThemeData(
        color: Theme.of(context).colorScheme.primary,
        nodePosition: 0.1,
        // indicatorTheme: const IndicatorThemeData(size: 16),
      ),
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.basic,
        // indicatorStyle: const IndicatorStyle.solidLine(),
        // connectorStyle: const ConnectorStyle.solidLine(),
        itemCount: ourWeddingSchedule.length,
        contentsBuilder: (context, index) =>
            Padding(padding: const EdgeInsets.symmetric(vertical: 16), child: ourWeddingSchedule[index]),
      ),
    );
  }
}


