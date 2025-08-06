import 'package:flutter/material.dart';
import 'package:jaylin_wedding/core/drawer.dart';
import 'package:jaylin_wedding/features/faqs/faq_widget.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
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
            FaqList(
              items: [
                FaqItem('Where is the wedding?', 'Oxbow Country Estate'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
