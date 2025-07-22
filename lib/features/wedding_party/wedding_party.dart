import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WeddingPartyPage extends StatelessWidget {
  const WeddingPartyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wedding Party'),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.4),
        foregroundColor: Theme.of(context).colorScheme.surface,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kaylin & Jady',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text('May 01, 2026', style: Theme.of(context).textTheme.bodySmall),
              Text('Oxbow Country Estate', style: Theme.of(context).textTheme.bodySmall),
              Padding(padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), child: Divider()),
              TextButton(
                onPressed: () => context.go('/home'),
                child: Text('Home', style: Theme.of(context).textTheme.headlineSmall),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Wedding Party', style: Theme.of(context).textTheme.headlineSmall),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Schedule', style: Theme.of(context).textTheme.headlineSmall),
              ),
              TextButton(
                onPressed: () {},
                child: Text('FAQs', style: Theme.of(context).textTheme.headlineSmall),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Accomodation', style: Theme.of(context).textTheme.headlineSmall),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
