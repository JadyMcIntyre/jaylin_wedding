import 'package:go_router/go_router.dart';
import 'package:jaylin_wedding/features/faqs/faq_page.dart';
import 'package:jaylin_wedding/features/home/presentation/pages/home_page.dart';
import 'package:jaylin_wedding/features/wedding_party/wedding_party.dart';
import 'package:jaylin_wedding/features/schedule/schedule_page.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', name: 'home', builder: (context, state) => HomePage()),
    GoRoute(path: '/wedding_party', name: 'wedding_party', builder: (context, state) => WeddingPartyPage()),
    GoRoute(path: '/faqs', name: 'faqs', builder: (context, state) => FAQPage()),
    GoRoute(path: '/schedule', name: 'schedule', builder: (context, state) => SchedulePage()),
    // GoRoute(
    //   path: '/details/:id',
    //   name: 'details',
    //   builder: (context, state) {
    //     final id = state.params['id']!;
    //     return DetailsPage(itemId: id);
    //   },
    // ),
    // …more routes…
  ],
);
