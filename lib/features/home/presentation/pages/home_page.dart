import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jaylin_wedding/features/home/presentation/get_time.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Timer _ticker;
  late TimeUntil _diff;

  static final _weddingDate = DateTime(2026, 5, 1);

  @override
  void initState() {
    super.initState();
    _diff = timeUntilDate(_weddingDate);
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => _diff = timeUntilDate(_weddingDate));
    });
  }

  @override
  void dispose() {
    _ticker.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final headline = prettyTimeUntil(_diff);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
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
            SizedBox(
              height: 300,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0), // or whatever
                child: Image.asset(
                  'assets/hero.jpg',
                  fit: BoxFit.cover, // fill width, crop overflow
                ),
              ),
            ),
            SizedBox(height: 10),
            Text('Kaylin Schultz', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text('and', style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.center),
            ),
            Text('Jady McIntyre', style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(headline, style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center),
            ),
            Text('Oxbow Estate', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
            Text('BHS', style: Theme.of(context).textTheme.labelSmall, textAlign: TextAlign.center),
            const SizedBox(height: 16),
            Text('May 1', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
            Text('2026', style: Theme.of(context).textTheme.labelSmall, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(30),
              child: FilledButton(onPressed: () {}, child: Text('RSVP')),
            ),
            Text('How We Met', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
            Text('1.23.18', style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'wekllskdjfalskdfj jfalksjflk asjdflfadsjdl fajsl alsfdkjdskk adklsd adklsflskd jklasdjfalks lkjkl kl sdklf kjlkjsf lkj ljk llj lsfj',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            Text('The Proposal', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center),
            Text('3.07.24', style: Theme.of(context).textTheme.titleSmall, textAlign: TextAlign.center),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'wekllskdjfalskdfj jfalksjflk asjdflfadsjdl fajsl alsfdkjdskk adklsd adklsflskd jklasdjfalks lkjkl kl sdklf kjlkjsf lkj ljk llj lsfj',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
