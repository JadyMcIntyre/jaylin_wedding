import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jaylin_wedding/core/drawer.dart';
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
      drawer: CustomDrawer(),
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
            Person(name: 'Maleah', imagePath: '', description: 'Maid of Honour'),
            Person(name: 'Aeryn', imagePath: '', description: 'Bridesmaid'),
            Person(name: 'Jenna', imagePath: '', description: 'Bridesmaid'),
            const SizedBox(height: 20),
            Text('His Sidekicks', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
            const SizedBox(height: 10),
            Person(name: 'Matthew', imagePath: '', description: 'Best Man'),
            Person(name: 'Shaldon', imagePath: '', description: 'Groomsman'),
            Person(name: 'Liam', imagePath: '', description: 'Groomsman'),
          ],
        ),
      ),
    );
  }
}
