import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jaylin_wedding/features/wedding_party/person.dart';

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
          children: [
            const SizedBox(height: 40),
            Text('Wedding Party', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
              child: Text(
                'Meet our friends and family who are walking down the aisle with us',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Text('Her Sidekicks', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: CircleAvatar(radius: 50, child: Icon(Icons.person)),
                ),
                Text('Maleah', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: 'She '),
                        TextSpan(
                          text: 'thinks',
                          style: const TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        const TextSpan(text: ' knows she is a know it all'),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Person(name: 'Aeryn', imagePath: '', description: 'aka Stickies, famous for her stickiness'),
            Person(name: 'Jenna', imagePath: '', description: 'This is an example of a description'),
            const SizedBox(height: 20),
            Text('His Sidekicks', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
            const SizedBox(height: 10),
            Person(name: 'Matthew', imagePath: '', description: 'This is an example of a description'),
          ],
        ),
      ),
    );
  }
}
