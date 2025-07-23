import 'package:flutter/material.dart';

class FaqItem {
  final String q;
  final String a;
  FaqItem(this.q, this.a);
}

class FaqList extends StatelessWidget {
  final List<FaqItem> items;
  const FaqList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (_, i) {
        final item = items[i];
        return ExpansionTile(
          title: Text(item.q),
          childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [Text(item.a)],
        );
      },
      separatorBuilder: (_, __) => const Divider(height: 0, thickness: 0.6),
    );
  }
}

