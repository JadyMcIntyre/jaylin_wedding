import 'package:flutter/material.dart';
import 'package:jaylin_wedding/features/schedule/widgets/timeline_item.dart';

final ourWeddingSchedule = <TimelineItem>[
  TimelineItem(title: '14:30 - 14:45', subTitle: 'Guests arrive', iconData: Icons.people,),
  TimelineItem(title: '15:00 - 16:00', subTitle: 'Ceremony', iconData: Icons.church,),
  TimelineItem(title: '16:00 - 17:00', subTitle: 'Canapes', iconData: Icons.cookie,),
  TimelineItem(title: '17:00 - 18:00', subTitle: 'Photos', iconData: Icons.camera_alt,),
  TimelineItem(title: '18:00 - 19:00', subTitle: 'Reception', iconData: Icons.restaurant,),
  TimelineItem(title: '20:00 - 00:00', subTitle: 'Party Time', iconData: Icons.celebration,),
  TimelineItem(title: '00:00 - 02:00', subTitle: 'Pizza/Boma Time', iconData: Icons.local_pizza,),
  TimelineItem(title: '02:00 - whenever', subTitle: 'Pizza/Boma Time', iconData: Icons.local_pizza,),
];