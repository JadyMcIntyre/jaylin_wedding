import 'package:flutter/material.dart';
import 'package:jaylin_wedding/core/drawer.dart';

class AccomodationPage extends StatelessWidget {
  const AccomodationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accomodation'),
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
            Text('Here is the Accomodation'),
          ],
        ),
      ),
    );
  }
}
