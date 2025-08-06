import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kaylin & Jady', style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold)),
            Text('May 01, 2026', style: Theme.of(context).textTheme.bodySmall),
            Text('Oxbow Country Estate', style: Theme.of(context).textTheme.bodySmall),
            Padding(padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), child: Divider()),
            TextButton(
              onPressed: () => context.go('/'),
              child: Text('Home', style: Theme.of(context).textTheme.headlineSmall),
            ),
            TextButton(
              onPressed: () => context.go('/wedding_party'),
              child: Text('Wedding Party', style: Theme.of(context).textTheme.headlineSmall),
            ),
            TextButton(
              onPressed: () => context.go('/schedule'),
              child: Text('Schedule', style: Theme.of(context).textTheme.headlineSmall),
            ),
            TextButton(
              onPressed: () => context.go('/dress_code'),
              child: Text('Dress Code', style: Theme.of(context).textTheme.headlineSmall),
            ),
            TextButton(
              onPressed: () => context.go('/faqs'),
              child: Text('FAQs', style: Theme.of(context).textTheme.headlineSmall),
            ),
            TextButton(
              onPressed: () => context.go('/accommodation'),
              child: Text('Accommodation', style: Theme.of(context).textTheme.headlineSmall),
            ),
          ],
        ),
      ),
    );
  }
}
