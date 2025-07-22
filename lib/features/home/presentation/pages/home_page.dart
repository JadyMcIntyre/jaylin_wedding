import 'dart:async';
import 'package:flutter/material.dart';
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
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.surface,
      ),
      drawer: Drawer(),
      body: Center(
        child: Text(
          'The wedding is in $headline '
          '(${_diff.minutes} minutes / ${_diff.seconds} seconds)',
        ),
      ),
    );
  }
}
