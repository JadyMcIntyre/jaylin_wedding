import 'package:flutter/material.dart';
import 'package:jaylin_wedding/core/drawer.dart';
import 'package:jaylin_wedding/features/faqs/faq_widget.dart';

class DressCodePage extends StatelessWidget {
  const DressCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dress Code'),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.4),
        foregroundColor: Theme.of(context).colorScheme.surface,
      ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dress Code: ', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                  Text('Black Tie', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
                ],
              ),
              Icon(Icons.image, size: 80),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                            Text('Ladies', style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.center),
                            const SizedBox(height: 10),
                            Text('- Any Color dress (No White, No Black, No Cream)', textAlign: TextAlign.center),
                            Text('- Below the knee dresses only (No cocktail dresses)', textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 270,
                        child: OutlinedButton(onPressed: () {}, child: Text('Ladies')),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          children: [
                            Text(
                              'Gents',
                              style: Theme.of(context).textTheme.headlineSmall,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text('- Tie or bow tie in any color', textAlign: TextAlign.center),
                            Text('- Black or White Button Down Shirts', textAlign: TextAlign.center),
                            Text('- Suit Shoes only, no sneakers or casual footwear', textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 270,
                        child: FilledButton(onPressed: () {}, child: Text('Gents')),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
