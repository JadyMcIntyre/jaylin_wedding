import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jaylin_wedding/core/drawer.dart';
import 'package:jaylin_wedding/features/faqs/faq_widget.dart';
import 'package:jaylin_wedding/features/wedding_party/person.dart';

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
                FaqItem('How Many Genders are there?', 'IDK I just got here?!?'),
                FaqItem('How Many Genders are there?', 'IDK I just got here?!?'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
